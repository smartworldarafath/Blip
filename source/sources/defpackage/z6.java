package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.grid.GridItemSpan;
import androidx.compose.foundation.lazy.grid.LazyGridSpanKt;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.material.DrawerState;
import androidx.compose.material.DrawerValue;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.SaversKt$NonNullValueClassSaver$1;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.TextUnit;
import androidx.core.os.BundleKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavBackStackEntryState;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.internal.NavControllerImpl;
import androidx.savedstate.SavedStateReaderKt;
import androidx.savedstate.SavedStateWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.help.HelpScreenSendToOtherPeopleKt;
import net.blip.android.ui.help.HelpScreenSendToYourDevicesKt;
import net.blip.android.ui.home.HomeTopBarKt;
import net.blip.android.ui.list.ListRowKt;
import net.blip.android.ui.onboarding.OnboardingEnableNotificationsStepKt;
import net.blip.android.ui.onboarding.OnboardingShareInstructionsStepKt;
import net.blip.libblip.frontend.Transfer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class z6 implements Function2 {
    public final /* synthetic */ int j;

    public /* synthetic */ z6(int i) {
        this.j = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        ArrayList<? extends Parcelable> arrayList;
        boolean z;
        int i = this.j;
        Bundle bundle = null;
        boolean z2 = false;
        z2 = false;
        z2 = false;
        z2 = false;
        Unit unit = Unit.a;
        switch (i) {
            case 0:
                return ((CoroutineContext) obj).A((CoroutineContext.Element) obj2);
            case 1:
                ((Integer) obj2).getClass();
                return EnterExitTransitionKt.c(AnimationSpecKt.b(1.0f, 1600.0f, null, 4), 2);
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ((Integer) obj2).getClass();
                TwoWayConverter twoWayConverter = EnterExitTransitionKt.a;
                return EnterExitTransitionKt.f(0.7f, TransformOrigin.b, AnimationSpecKt.b(0.0f, 400.0f, null, 5));
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                return (DrawerValue) ((SnapshotMutableStateImpl) ((DrawerState) obj2).a.g).getValue();
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                return Boolean.valueOf(Intrinsics.a(obj, obj2));
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                ((Integer) obj2).getClass();
                HelpScreenSendToOtherPeopleKt.a(RecomposeScopeImplKt.a(1), (Composer) obj);
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                ((Integer) obj2).getClass();
                HelpScreenSendToYourDevicesKt.b(RecomposeScopeImplKt.a(1), (Composer) obj);
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Integer) obj2).getClass();
                HomeTopBarKt.a(RecomposeScopeImplKt.a(1), (Composer) obj);
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((Integer) obj2).intValue();
                return new GridItemSpan(LazyGridSpanKt.a(1));
            case KeyModifiers.a /* 9 */:
                LazyGridState lazyGridState = (LazyGridState) obj2;
                return CollectionsKt.C(Integer.valueOf(lazyGridState.d.a()), Integer.valueOf(lazyGridState.d.b()));
            case KeyModifiers.b /* 10 */:
                LazyListState lazyListState = (LazyListState) obj2;
                return CollectionsKt.C(Integer.valueOf(lazyListState.e.a()), Integer.valueOf(lazyListState.e.b()));
            case 11:
                ((Integer) obj2).getClass();
                ListRowKt.a(RecomposeScopeImplKt.a(1), (Composer) obj);
                return unit;
            case KeyModifiers.c /* 12 */:
                NavHostController navHostController = (NavHostController) obj2;
                NavControllerImpl navControllerImpl = navHostController.b;
                LinkedHashMap linkedHashMap = navControllerImpl.n;
                ArrayDeque arrayDeque = navControllerImpl.f;
                LinkedHashMap linkedHashMap2 = navControllerImpl.m;
                ArrayList arrayList2 = new ArrayList();
                Bundle a = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                Bundle bundle2 = navControllerImpl.d;
                if (bundle2 != null && bundle2.containsKey("android-support-nav:controller:navigatorState:names")) {
                    ArrayList<String> stringArrayList = bundle2.getStringArrayList("android-support-nav:controller:navigatorState:names");
                    if (stringArrayList != null) {
                        for (String str : stringArrayList) {
                            str.getClass();
                            if (bundle2.containsKey(str)) {
                                Bundle bundle3 = bundle2.getBundle(str);
                                if (bundle3 != null) {
                                    arrayList2.add(str);
                                    a.putBundle(str, bundle3);
                                } else {
                                    SavedStateReaderKt.a(str);
                                    throw null;
                                }
                            }
                        }
                    } else {
                        SavedStateReaderKt.a("android-support-nav:controller:navigatorState:names");
                        throw null;
                    }
                }
                for (Map.Entry entry : MapsKt.i(navControllerImpl.t.a).entrySet()) {
                    ((Navigator) entry.getValue()).getClass();
                }
                if (!arrayList2.isEmpty()) {
                    bundle = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                    SavedStateWriter.a(a, "android-support-nav:controller:navigatorState:names", arrayList2);
                    bundle.putBundle("android-support-nav:controller:navigatorState", a);
                }
                if (!arrayDeque.isEmpty()) {
                    if (bundle == null) {
                        bundle = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                    }
                    ArrayList<? extends Parcelable> arrayList3 = new ArrayList<>();
                    Iterator<E> it = arrayDeque.iterator();
                    while (it.hasNext()) {
                        arrayList3.add(new NavBackStackEntryState((NavBackStackEntry) it.next()).b());
                    }
                    bundle.putParcelableArrayList("android-support-nav:controller:backStack", arrayList3);
                } else if (navControllerImpl.e != null) {
                    if (bundle == null) {
                        bundle = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                    }
                    Bundle[] bundleArr = navControllerImpl.e;
                    bundleArr.getClass();
                    List v = ArraysKt.v(bundleArr);
                    if (v instanceof ArrayList) {
                        arrayList = (ArrayList) v;
                    } else {
                        arrayList = new ArrayList<>(v);
                    }
                    bundle.putParcelableArrayList("android-support-nav:controller:backStack", arrayList);
                }
                if (!linkedHashMap2.isEmpty()) {
                    if (bundle == null) {
                        bundle = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                    }
                    int[] iArr = new int[linkedHashMap2.size()];
                    ArrayList arrayList4 = new ArrayList();
                    int i2 = 0;
                    for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                        int intValue = ((Number) entry2.getKey()).intValue();
                        String str2 = (String) entry2.getValue();
                        int i3 = i2 + 1;
                        iArr[i2] = intValue;
                        if (str2 == null) {
                            str2 = "";
                        }
                        arrayList4.add(str2);
                        i2 = i3;
                    }
                    bundle.putIntArray("android-support-nav:controller:backStackDestIds", iArr);
                    SavedStateWriter.a(bundle, "android-support-nav:controller:backStackIds", arrayList4);
                }
                if (!linkedHashMap.isEmpty()) {
                    if (bundle == null) {
                        bundle = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                    }
                    ArrayList arrayList5 = new ArrayList();
                    for (Map.Entry entry3 : linkedHashMap.entrySet()) {
                        String str3 = (String) entry3.getKey();
                        ArrayDeque arrayDeque2 = (ArrayDeque) entry3.getValue();
                        arrayList5.add(str3);
                        ArrayList<? extends Parcelable> arrayList6 = new ArrayList<>();
                        Iterator<E> it2 = arrayDeque2.iterator();
                        while (it2.hasNext()) {
                            arrayList6.add(((NavBackStackEntryState) it2.next()).b());
                        }
                        bundle.putParcelableArrayList("android-support-nav:controller:backStackStates:" + str3, arrayList6);
                    }
                    SavedStateWriter.a(bundle, "android-support-nav:controller:backStackStates", arrayList5);
                }
                if (navHostController.e) {
                    if (bundle == null) {
                        bundle = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                    }
                    bundle.putBoolean("android-support-nav:controller:deepLinkHandled", navHostController.e);
                }
                return bundle;
            case 13:
                Transfer transfer = (Transfer) obj;
                Transfer transfer2 = (Transfer) obj2;
                if (transfer.w == transfer2.w && transfer.z == transfer2.z && Intrinsics.a(transfer.t, transfer2.t) && Intrinsics.a(transfer.u, transfer2.u)) {
                    z2 = true;
                }
                return Boolean.valueOf(z2);
            case 14:
                ((Integer) obj2).getClass();
                OnboardingEnableNotificationsStepKt.a(RecomposeScopeImplKt.a(1), (Composer) obj);
                return unit;
            case 15:
                ((Integer) obj2).getClass();
                OnboardingScreenKt.a(RecomposeScopeImplKt.a(1), (Composer) obj);
                return unit;
            case 16:
                ((Integer) obj2).getClass();
                OnboardingShareInstructionsStepKt.a(RecomposeScopeImplKt.a(1), (Composer) obj);
                return unit;
            case 17:
                ((Integer) obj2).getClass();
                OnboardingShareInstructionsStepKt.d(RecomposeScopeImplKt.a(1), (Composer) obj);
                return unit;
            case 18:
                Composer composer = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue2 & 1, z)) {
                    BoxKt.a(AspectRatioKt.a(BackgroundKt.b(Modifier.Companion.b, Color.b(((AndroidColors) gapComposer.j(AndroidColorsKt.a)).a, 0.04f), RoundedCornerShapeKt.a)), gapComposer, 0);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 19:
                return Integer.valueOf(((Integer) obj).intValue() + 1);
            case 20:
                return obj2;
            case 21:
                AnnotatedString annotatedString = (AnnotatedString) obj2;
                SaverKt$Saver$1 saverKt$Saver$1 = SaversKt.a;
                return CollectionsKt.h(annotatedString.k, SaversKt.a(annotatedString.j, SaversKt.a, (SaverScope) obj));
            case 22:
                SaverKt$Saver$1 saverKt$Saver$12 = SaversKt.a;
                return Integer.valueOf(((TextDecoration) obj2).a);
            case 23:
                TextGeometricTransform textGeometricTransform = (TextGeometricTransform) obj2;
                SaverKt$Saver$1 saverKt$Saver$13 = SaversKt.a;
                return CollectionsKt.h(Float.valueOf(textGeometricTransform.a), Float.valueOf(textGeometricTransform.b));
            case 24:
                SaverScope saverScope = (SaverScope) obj;
                TextIndent textIndent = (TextIndent) obj2;
                SaverKt$Saver$1 saverKt$Saver$14 = SaversKt.a;
                TextUnit textUnit = new TextUnit(textIndent.a);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.v;
                return CollectionsKt.h(SaversKt.a(textUnit, saversKt$NonNullValueClassSaver$1, saverScope), SaversKt.a(new TextUnit(textIndent.b), saversKt$NonNullValueClassSaver$1, saverScope));
            case 25:
                SaverKt$Saver$1 saverKt$Saver$15 = SaversKt.a;
                return Integer.valueOf(((FontWeight) obj2).j);
            case 26:
                LinkAnnotation.Url url = (LinkAnnotation.Url) obj2;
                SaverKt$Saver$1 saverKt$Saver$16 = SaversKt.a;
                return CollectionsKt.h(url.a, SaversKt.a(url.b, SaversKt.i, (SaverScope) obj));
            case 27:
                SaverKt$Saver$1 saverKt$Saver$17 = SaversKt.a;
                return Float.valueOf(((BaselineShift) obj2).a);
            case 28:
                SaverScope saverScope2 = (SaverScope) obj;
                List list = (List) obj2;
                SaverKt$Saver$1 saverKt$Saver$18 = SaversKt.a;
                ArrayList arrayList7 = new ArrayList(list.size());
                int size = list.size();
                for (int i4 = 0; i4 < size; i4++) {
                    arrayList7.add(SaversKt.a((AnnotatedString.Range) list.get(i4), SaversKt.b, saverScope2));
                }
                return arrayList7;
            default:
                TextRange textRange = (TextRange) obj2;
                SaverKt$Saver$1 saverKt$Saver$19 = SaversKt.a;
                return CollectionsKt.h(Integer.valueOf((int) (textRange.a >> 32)), Integer.valueOf((int) (textRange.a & 4294967295L)));
        }
    }
}
