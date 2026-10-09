package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.core.os.BundleCompat;
import androidx.navigation.NavBackStackEntryState;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.internal.NavControllerImpl;
import androidx.savedstate.SavedStateReaderKt;
import defpackage.jb;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import net.blip.android.MainActivity;
import net.blip.android.MainActivityKt;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidThemeKt;
import net.blip.android.ui.navigation.NavigationRootKt;
import net.blip.android.ui.util.SystemBarsMetricsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class wa implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ MainActivity k;
    public final /* synthetic */ Intent l;
    public final /* synthetic */ MainActivity m;

    public /* synthetic */ wa(MainActivity mainActivity, Intent intent, MainActivity mainActivity2, int i) {
        this.j = i;
        this.k = mainActivity;
        this.l = intent;
        this.m = mainActivity2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        int i = this.j;
        Intent intent = this.l;
        MainActivity mainActivity = this.k;
        Unit unit = Unit.a;
        boolean z2 = false;
        MainActivity mainActivity2 = this.m;
        int i2 = 2;
        int i3 = 1;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                String str = MainActivity.G;
                if ((intValue & 3) != 2) {
                    z2 = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z2)) {
                    SystemBarsMetricsKt.a(ComposableLambdaKt.b(-113592433, new wa(mainActivity, intent, mainActivity2, i3), gapComposer), gapComposer, 6);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                String str2 = MainActivity.G;
                if ((intValue2 & 3) != 2) {
                    z2 = true;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z2)) {
                    AndroidThemeKt.a(ComposableLambdaKt.b(2113213000, new wa(mainActivity, intent, mainActivity2, i2), gapComposer2), gapComposer2, 6);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            default:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                String str3 = MainActivity.G;
                if ((intValue3 & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.N(intValue3 & 1, z)) {
                    Modifier b = BackgroundKt.b(SizeKt.c(Modifier.Companion.b, 1.0f), ((AndroidColors) gapComposer3.j(AndroidColorsKt.a)).p, RectangleShapeKt.a);
                    MeasurePolicy d = BoxKt.d(Alignment.Companion.a, false);
                    int hashCode = Long.hashCode(gapComposer3.T);
                    PersistentCompositionLocalMap l = gapComposer3.l();
                    Modifier c = ComposedModifierKt.c(gapComposer3, b);
                    ComposeUiNode.b.getClass();
                    gapComposer3.Z();
                    if (gapComposer3.S) {
                        gapComposer3.k(LayoutNode.b0);
                    } else {
                        gapComposer3.j0();
                    }
                    Updater.c(gapComposer3, d, ComposeUiNode.Companion.d);
                    Updater.c(gapComposer3, l, ComposeUiNode.Companion.c);
                    Updater.c(gapComposer3, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                    Updater.b(gapComposer3);
                    Updater.c(gapComposer3, c, ComposeUiNode.Companion.b);
                    final Context context = (Context) gapComposer3.j(AndroidCompositionLocals_androidKt.b);
                    Object[] copyOf = Arrays.copyOf(new Navigator[0], 0);
                    SaverKt$Saver$1 saverKt$Saver$1 = new SaverKt$Saver$1(new z6(12), new Function1() { // from class: androidx.navigation.compose.b
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // kotlin.jvm.functions.Function1
                        public final Object b(Object obj3) {
                            Bundle bundle;
                            Bundle[] bundleArr;
                            Throwable th;
                            Object obj4;
                            Boolean bool;
                            Bundle bundle2 = (Bundle) obj3;
                            NavHostController a = NavHostControllerKt__NavHostController_androidKt.a(context);
                            if (bundle2 != null) {
                                bundle2.setClassLoader(a.a.getClassLoader());
                            }
                            NavControllerImpl navControllerImpl = a.b;
                            LinkedHashMap linkedHashMap = navControllerImpl.n;
                            Throwable th2 = null;
                            boolean z3 = false;
                            if (bundle2 == null) {
                                th = null;
                            } else {
                                if (bundle2.containsKey("android-support-nav:controller:navigatorState")) {
                                    bundle = bundle2.getBundle("android-support-nav:controller:navigatorState");
                                    if (bundle == null) {
                                        SavedStateReaderKt.a("android-support-nav:controller:navigatorState");
                                        throw null;
                                    }
                                } else {
                                    bundle = null;
                                }
                                navControllerImpl.d = bundle;
                                if (bundle2.containsKey("android-support-nav:controller:backStack")) {
                                    ArrayList b2 = BundleCompat.b(bundle2, "android-support-nav:controller:backStack", JvmClassMappingKt.a(Reflection.a(Bundle.class)));
                                    if (b2 != null) {
                                        bundleArr = (Bundle[]) b2.toArray(new Bundle[0]);
                                    } else {
                                        SavedStateReaderKt.a("android-support-nav:controller:backStack");
                                        throw null;
                                    }
                                } else {
                                    bundleArr = null;
                                }
                                navControllerImpl.e = bundleArr;
                                linkedHashMap.clear();
                                if (bundle2.containsKey("android-support-nav:controller:backStackDestIds") && bundle2.containsKey("android-support-nav:controller:backStackIds")) {
                                    int[] intArray = bundle2.getIntArray("android-support-nav:controller:backStackDestIds");
                                    if (intArray != null) {
                                        ArrayList<String> stringArrayList = bundle2.getStringArrayList("android-support-nav:controller:backStackIds");
                                        if (stringArrayList != null) {
                                            int length = intArray.length;
                                            int i4 = 0;
                                            int i5 = 0;
                                            while (i4 < length) {
                                                int i6 = intArray[i4];
                                                int i7 = i5 + 1;
                                                LinkedHashMap linkedHashMap2 = navControllerImpl.m;
                                                Integer valueOf = Integer.valueOf(i6);
                                                Throwable th3 = th2;
                                                if (!Intrinsics.a(stringArrayList.get(i5), "")) {
                                                    obj4 = (String) stringArrayList.get(i5);
                                                } else {
                                                    obj4 = th3;
                                                }
                                                linkedHashMap2.put(valueOf, obj4);
                                                i4++;
                                                th2 = th3;
                                                i5 = i7;
                                            }
                                        } else {
                                            SavedStateReaderKt.a("android-support-nav:controller:backStackIds");
                                            throw null;
                                        }
                                    } else {
                                        SavedStateReaderKt.a("android-support-nav:controller:backStackDestIds");
                                        throw null;
                                    }
                                }
                                th = th2;
                                if (bundle2.containsKey("android-support-nav:controller:backStackStates")) {
                                    ArrayList<String> stringArrayList2 = bundle2.getStringArrayList("android-support-nav:controller:backStackStates");
                                    if (stringArrayList2 != null) {
                                        for (String str4 : stringArrayList2) {
                                            if (bundle2.containsKey("android-support-nav:controller:backStackStates:" + str4)) {
                                                String f = jb.f("android-support-nav:controller:backStackStates:", str4);
                                                ArrayList b3 = BundleCompat.b(bundle2, f, JvmClassMappingKt.a(Reflection.a(Bundle.class)));
                                                if (b3 != null) {
                                                    ArrayDeque arrayDeque = new ArrayDeque(b3.size());
                                                    Iterator it = b3.iterator();
                                                    while (it.hasNext()) {
                                                        arrayDeque.addLast(new NavBackStackEntryState((Bundle) it.next()));
                                                    }
                                                    linkedHashMap.put(str4, arrayDeque);
                                                } else {
                                                    SavedStateReaderKt.a(f);
                                                    throw th;
                                                }
                                            }
                                        }
                                    } else {
                                        SavedStateReaderKt.a("android-support-nav:controller:backStackStates");
                                        throw th;
                                    }
                                }
                            }
                            if (bundle2 != null) {
                                boolean z4 = bundle2.getBoolean("android-support-nav:controller:deepLinkHandled", false);
                                if (!z4 && bundle2.getBoolean("android-support-nav:controller:deepLinkHandled", true)) {
                                    bool = th;
                                } else {
                                    bool = Boolean.valueOf(z4);
                                }
                                if (bool != 0) {
                                    z3 = bool.booleanValue();
                                }
                                a.e = z3;
                            }
                            return a;
                        }
                    });
                    boolean h = gapComposer3.h(context);
                    Object K = gapComposer3.K();
                    Object obj3 = Composer.Companion.a;
                    if (h || K == obj3) {
                        K = new Function0() { // from class: androidx.navigation.compose.a
                            @Override // kotlin.jvm.functions.Function0
                            public final Object a() {
                                return NavHostControllerKt__NavHostController_androidKt.a(context);
                            }
                        };
                        gapComposer3.g0(K);
                    }
                    NavHostController navHostController = (NavHostController) RememberSaveableKt.d(copyOf, saverKt$Saver$1, (Function0) K, gapComposer3, 0);
                    boolean h2 = gapComposer3.h(mainActivity2);
                    Object K2 = gapComposer3.K();
                    if (h2 || K2 == obj3) {
                        K2 = new va(mainActivity2, 1);
                        gapComposer3.g0(K2);
                    }
                    MainActivityKt.a(this.k, this.l, navHostController, (Function0) K2, gapComposer3, 0);
                    boolean h3 = gapComposer3.h(mainActivity2);
                    Object K3 = gapComposer3.K();
                    if (h3 || K3 == obj3) {
                        K3 = new va(mainActivity2, 2);
                        gapComposer3.g0(K3);
                    }
                    NavigationRootKt.c(navHostController, (Function0) K3, gapComposer3, 0);
                    gapComposer3.p(true);
                } else {
                    gapComposer3.Q();
                }
                return unit;
        }
    }
}
