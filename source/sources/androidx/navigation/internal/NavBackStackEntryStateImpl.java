package androidx.navigation.internal;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.navigation.NavBackStackEntry;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateReaderKt;
import java.util.Arrays;
import kotlin.Pair;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NavBackStackEntryStateImpl {
    public final String a;
    public final int b;
    public final Bundle c;
    public final Bundle d;

    public NavBackStackEntryStateImpl(Bundle bundle) {
        bundle.getClass();
        String string = bundle.getString("nav-entry-state:id");
        if (string != null) {
            this.a = string;
            this.b = SavedStateReader.c("nav-entry-state:destination-id", bundle);
            Bundle bundle2 = bundle.getBundle("nav-entry-state:args");
            if (bundle2 != null) {
                this.c = bundle2;
                Bundle bundle3 = bundle.getBundle("nav-entry-state:saved-state");
                if (bundle3 != null) {
                    this.d = bundle3;
                    return;
                } else {
                    SavedStateReaderKt.a("nav-entry-state:saved-state");
                    throw null;
                }
            }
            SavedStateReaderKt.a("nav-entry-state:args");
            throw null;
        }
        SavedStateReaderKt.a("nav-entry-state:id");
        throw null;
    }

    public NavBackStackEntryStateImpl(NavBackStackEntry navBackStackEntry, int i) {
        navBackStackEntry.getClass();
        this.a = navBackStackEntry.o;
        this.b = i;
        this.c = navBackStackEntry.b();
        Pair[] pairArr = new Pair[0];
        Bundle a = BundleKt.a((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        this.d = a;
        navBackStackEntry.q.c(a);
    }
}
