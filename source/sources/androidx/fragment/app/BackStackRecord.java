package androidx.fragment.app;

import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class BackStackRecord extends FragmentTransaction {
    public final FragmentManager b;
    public boolean c;
    public int d;

    public BackStackRecord(FragmentManager fragmentManager) {
        fragmentManager.getClass();
        this.a = new ArrayList();
        this.d = -1;
        this.b = fragmentManager;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.d >= 0) {
            sb.append(" #");
            sb.append(this.d);
        }
        sb.append("}");
        return sb.toString();
    }
}
