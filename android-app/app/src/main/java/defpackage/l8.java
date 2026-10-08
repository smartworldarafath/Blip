package defpackage;

import com.google.firebase.installations.FirebaseInstallations;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class l8 implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ FirebaseInstallations k;

    public /* synthetic */ l8(FirebaseInstallations firebaseInstallations, int i) {
        this.j = i;
        this.k = firebaseInstallations;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        FirebaseInstallations firebaseInstallations = this.k;
        switch (i) {
            case 0:
                Object obj = FirebaseInstallations.m;
                firebaseInstallations.a();
                return;
            default:
                Object obj2 = FirebaseInstallations.m;
                firebaseInstallations.a();
                return;
        }
    }
}
