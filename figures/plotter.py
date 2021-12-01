import skrf
import matplotlib.pyplot as mplt
import numpy as np

# mplt default color cycler:
colors = ['#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b', '#e377c2', '#7f7f7f', '#bcbd22', '#17becf']

mplt.rcParams['text.usetex']=True
mplt.rcParams['font.size'] = 10
mplt.rcParams['font.family'] = 'serif'
mplt.rcParams['lines.linewidth'] = 2
mplt.rcParams['lines.markersize'] = 3
mplt.rcParams['axes.prop_cycle'] = mplt.cycler('color', colors)
mplt.rcParams['axes.grid'] = True
mplt.rcParams['axes.axisbelow'] = True
mplt.rcParams['grid.color'] = '#aaaaaa'
mplt.rcParams['grid.linestyle'] = '-'
mplt.rcParams['grid.linewidth'] = 1.0
mplt.rcParams['grid.alpha'] = 1.0
mplt.rcParams['axes.formatter.use_locale'] = True
mplt.rcParams['axes.titlesize'] = 10
mplt.rcParams['axes.labelsize'] = 10
mplt.rcParams['xtick.labelsize'] = 10
mplt.rcParams['ytick.labelsize'] = 10
mplt.rcParams.update({'figure.autolayout': True})
mplt.rcParams['axes.formatter.use_locale'] = True
mplt.rcParams['legend.fancybox'] = False
mplt.rcParams['legend.framealpha'] = 0.8
mplt.rcParams['legend.fontsize'] = 8
mplt.rcParams['legend.handlelength'] = 3
mplt.rcParams['legend.edgecolor'] = 'inherit'
mplt.rcParams['legend.numpoints'] = 1
mplt.rcParams['figure.figsize'] = (3.2, 2.3)


def plot_ringslot_smith():
    mplt.figure(figsize=(3.2, 3.2))
    skrf.data.ring_slot.plot_s_smith()
    mplt.savefig('./ringslot_smith.pdf')
    mplt.savefig('./ringslot_smith.png', dpi=600)
    mplt.close()

def plot_ringslot_dB():
    mplt.figure()
    skrf.data.ring_slot.plot_s_db()
    mplt.ylim(-30, 0)
    mplt.savefig('./ringslot_db.pdf')
    mplt.savefig('./ringslot_db.png', dpi=600)
    mplt.close()

def plot_networkset_uncertainty():
    ro1 = skrf.data.ro_1
    ro1.name = 'ro1'
    ro2 = skrf.data.ro_2
    ro2.name = 'ro2'
    ro3 = skrf.data.ro_3
    ro3.name = 'ro3'
    ntwk_list = skrf.NetworkSet([ro1, ro2, ro3])

    mplt.figure()
    ntwk_list.plot_s_db()
    mplt.ylim(-16, -13)
    mplt.savefig('./networkset_individual.pdf')
    mplt.savefig('./networkset_individual.png', dpi=600)
    mplt.close()

    mplt.figure()
    ntwk_list.plot_uncertainty_bounds_s_db()
    mplt.ylim(-16, -13)
    mplt.legend().remove()
    mplt.savefig('./networkset_uncertainty.pdf')
    mplt.savefig('./networkset_uncertainty.png', dpi=600)
    mplt.close()

def plot_time_gating():
    probe_s11 = skrf.Network('./probe.s2p').s11
    probe_s11.name = 'Probe'
    probe_s11_gated = probe_s11.time_gate(center=0, span=0.2)
    probe_s11_gated.name = 'Gated probe'

    mplt.figure(figsize=(3.2, 2.6))
    probe_s11.plot_s_db_time()
    probe_s11_gated.plot_s_db_time()
    mplt.ylim(-120, -20)
    mplt.legend(loc='lower right', bbox_to_anchor=(0, 1.0, 1, 0.0))
    mplt.savefig('./gating_timedomain.pdf')
    mplt.savefig('./gating_timedomain.png', dpi=600)
    mplt.close()

    mplt.figure()
    probe_s11.plot_s_db()
    probe_s11_gated.plot_s_db()
    mplt.ylim(-50, -10)
    mplt.legend(loc='lower right')
    mplt.savefig('./gating_freqdomain.pdf')
    mplt.savefig('./gating_freqdomain.png', dpi=600)
    mplt.close()

def run_vectorfitting():
    nw = skrf.Network('./Agilent_E5071B.s4p')
    vf = skrf.VectorFitting(nw)

    vf.vector_fit(n_poles_real=2, n_poles_cmplx=32)
    vf.write_npz('./')

    # SPICE export has to be done with disabled TEX engine:
    # mplt.rcParams['text.usetex']=False
    vf.write_spice_subcircuit_s('./example_4port.sp')

    mplt.figure()
    vf.plot_convergence()
    mplt.show()

def plot_vectorfitting():
    nw = skrf.Network('./Agilent_E5071B.s4p')
    vf = skrf.VectorFitting(nw)
    vf.read_npz('./coefficients_Agilent_E5071B.npz')

    freqs = np.linspace(0, 5e9, 1001)

    fig, ax = mplt.subplots(1, 1)
    j = 0
    for i in range(4):
        samples = nw.s[:, i, j]
        fit = vf.get_model_response(i, j, freqs)
        ax.scatter(nw.f * 1e-9, np.abs(samples), color=colors[i], marker='o', s=10, label='Samples', zorder=5)
        ax.plot(freqs * 1e-9, np.abs(fit), color='k', label='Fit', linewidth=1, zorder=5)
    mplt.annotate('$S_{1,1}$', (4.3, 0.85), color=colors[0], fontsize=10)
    mplt.annotate('$S_{2,1}$', (1.2, 0.9), color=colors[1], fontsize=10)
    mplt.annotate('$S_{3,1}$', (1.8, 0.85), color=colors[2], fontsize=10)
    mplt.annotate('$S_{4,1}$', (2.7, 0.8), color=colors[3], fontsize=10)
    ax.set_ylim(0, 1)
    ax.set_ylabel('Magnitude')
    ax.set_xlim(0, 5)
    ax.set_xlabel('Frequency (GHz)')
    mplt.savefig('./vectfit_magnitude.pdf')
    mplt.savefig('./vectfit_magnitude.png', dpi=600)
    mplt.close()

    fig, ax = mplt.subplots(1, 1)
    j = 0
    for i in range(4):
        samples = nw.s[:, i, j]
        fit = vf.get_model_response(i, j, nw.f)
        abs_error = fit - samples
        ax.semilogy(nw.f * 1e-9, np.abs(abs_error), color=colors[i])

    mplt.annotate('$S_{1,1}$', (1.2, 2e-6), color=colors[0], fontsize=10)
    mplt.annotate('$S_{2,1}$', (2.2, 2e-6), color=colors[1], fontsize=10)
    mplt.annotate('$S_{3,1}$', (3.2, 2e-6), color=colors[2], fontsize=10)
    mplt.annotate('$S_{4,1}$', (4.2, 2e-6), color=colors[3], fontsize=10)
    ax.set_ylim(1e-6, 1e-2)
    ax.set_yticks([1e-6, 1e-5, 1e-4, 1e-3, 1e-2])
    ax.set_ylabel('Absolute Error')
    ax.set_xlim(0, 5)
    ax.set_xlabel('Frequency (GHz)')
    mplt.savefig('./vectfit_error.pdf')
    mplt.savefig('./vectfit_error.png', dpi=600)
    mplt.close()

def plot_vectorfitting_spice():
    nw = skrf.Network('./Agilent_E5071B.s4p')
    vf = skrf.VectorFitting(nw)
    vf.read_npz('./coefficients_Agilent_E5071B.npz')

    fig, ax = mplt.subplots(1, 1)

    j = 0
    for i in range(4):
        sim = np.loadtxt('./sim/s{}{}_0GHz-5GHz.csv'.format(i + 1, j + 1),
                         delimiter=';', skiprows=1, unpack=True)

        sim_freq = sim[0]
        sim_samples = sim[1] + 1j * sim[2]
        fit = vf.get_model_response(i, j, sim_freq)

        error = sim_samples - fit
        ax.semilogy(sim_freq * 1e-9, np.abs(error), color=colors[i], label='S{}{}'.format(i + 1, j + 1))

    mplt.annotate('$S_{1,1}$', (1.2, 2e-6), color=colors[0], fontsize=8)
    mplt.annotate('$S_{2,1}$', (2.2, 2e-6), color=colors[1], fontsize=8)
    mplt.annotate('$S_{3,1}$', (3.2, 2e-6), color=colors[2], fontsize=8)
    mplt.annotate('$S_{4,1}$', (4.2, 2e-6), color=colors[3], fontsize=8)

    #ax.set_ylim(1e-6, 1e-2)
    #ax.set_yticks([1e-6, 1e-5, 1e-4, 1e-3, 1e-2])
    ax.set_ylabel('Absolute Error')
    ax.set_xlim(0, 5)
    ax.set_xlabel('Frequency (GHz)')
    #mplt.legend(loc='lower left', bbox_to_anchor=(0, 1.02, 1, 0.1), mode='expand', ncol=4)
    mplt.savefig('./vectfit_spice_error.pdf')
    mplt.savefig('./vectfit_spice_error.png', dpi=600)
    mplt.close()


#plot_ringslot_smith()
#plot_ringslot_dB()
plot_networkset_uncertainty()
#plot_time_gating()
#run_vectorfitting()
#plot_vectorfitting()
#plot_vectorfitting_spice()
