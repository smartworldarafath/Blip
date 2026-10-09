package androidx.media3.common;

import androidx.media3.common.Timeline;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BasePlayer implements Player {
    public final Timeline.Window a = new Timeline.Window();

    public final void U(int i) {
        Y(-1, -9223372036854775807L, false);
    }

    public final boolean V(int i) {
        return h().a.a.get(i);
    }

    public final boolean W() {
        Timeline K = K();
        if (!K.p() && K.m(D(), this.a, 0L).a()) {
            return true;
        }
        return false;
    }

    public final boolean X() {
        if (y() == 3 && i() && I() == 0) {
            return true;
        }
        return false;
    }

    public abstract void Y(int i, long j, boolean z);

    public final void Z(int i, long j) {
        Y(D(), j, false);
    }

    public final void a0() {
        int e;
        boolean z;
        int e2;
        if (!K().p() && !f()) {
            Timeline K = K();
            boolean z2 = true;
            if (K.p()) {
                e = -1;
            } else {
                int D = D();
                int J = J();
                if (J == 1) {
                    J = 0;
                }
                e = K.e(D, J, N());
            }
            if (e != -1) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                Timeline K2 = K();
                if (K2.p()) {
                    e2 = -1;
                } else {
                    int D2 = D();
                    int J2 = J();
                    if (J2 == 1) {
                        J2 = 0;
                    }
                    e2 = K2.e(D2, J2, N());
                }
                if (e2 == -1) {
                    U(9);
                    return;
                } else if (e2 == D()) {
                    Y(D(), -9223372036854775807L, true);
                    return;
                } else {
                    Y(e2, -9223372036854775807L, false);
                    return;
                }
            }
            if (W()) {
                Timeline K3 = K();
                if (K3.p() || !K3.m(D(), this.a, 0L).g) {
                    z2 = false;
                }
                if (z2) {
                    Y(D(), -9223372036854775807L, false);
                    return;
                }
            }
            U(9);
            return;
        }
        U(9);
    }

    public final void b0() {
        int k;
        boolean z;
        int k2;
        boolean z2;
        int k3;
        if (!K().p() && !f()) {
            Timeline K = K();
            if (K.p()) {
                k = -1;
            } else {
                int D = D();
                int J = J();
                if (J == 1) {
                    J = 0;
                }
                k = K.k(D, J, N());
            }
            if (k != -1) {
                z = true;
            } else {
                z = false;
            }
            if (W()) {
                Timeline K2 = K();
                if (!K2.p() && K2.m(D(), this.a, 0L).f) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (!z2) {
                    if (z) {
                        Timeline K3 = K();
                        if (K3.p()) {
                            k3 = -1;
                        } else {
                            int D2 = D();
                            int J2 = J();
                            if (J2 == 1) {
                                J2 = 0;
                            }
                            k3 = K3.k(D2, J2, N());
                        }
                        if (k3 == -1) {
                            U(7);
                            return;
                        } else if (k3 == D()) {
                            Y(D(), -9223372036854775807L, true);
                            return;
                        } else {
                            Y(k3, -9223372036854775807L, false);
                            return;
                        }
                    }
                    U(7);
                    return;
                }
            }
            if (z && S() <= k()) {
                Timeline K4 = K();
                if (K4.p()) {
                    k2 = -1;
                } else {
                    int D3 = D();
                    int J3 = J();
                    if (J3 == 1) {
                        J3 = 0;
                    }
                    k2 = K4.k(D3, J3, N());
                }
                if (k2 == -1) {
                    U(7);
                    return;
                } else if (k2 == D()) {
                    Y(D(), -9223372036854775807L, true);
                    return;
                } else {
                    Y(k2, -9223372036854775807L, false);
                    return;
                }
            }
            Z(7, 0L);
            return;
        }
        U(7);
    }
}
