package defpackage;

import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.navigation.NavHostController;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import net.blip.android.ui.navigation.NavigationRootKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class x7 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;

    public /* synthetic */ x7(int i, Object obj, Object obj2, boolean z) {
        this.j = i;
        this.k = z;
        this.l = obj;
        this.m = obj2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        switch (this.j) {
            case 0:
                boolean z = this.k;
                SavedStateRegistry savedStateRegistry = (SavedStateRegistry) this.l;
                String str = (String) this.m;
                if (z) {
                    SavedStateRegistryImpl savedStateRegistryImpl = savedStateRegistry.a;
                    synchronized (savedStateRegistryImpl.c) {
                    }
                }
                return Unit.a;
            default:
                boolean z2 = this.k;
                Function0 function0 = (Function0) this.l;
                NavHostController navHostController = (NavHostController) this.m;
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = NavigationRootKt.a;
                if (z2) {
                    function0.a();
                } else {
                    navHostController.c();
                }
                return Unit.a;
        }
    }
}
