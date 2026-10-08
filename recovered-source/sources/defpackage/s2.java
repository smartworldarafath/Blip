package defpackage;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.widget.Toast;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.gestures.MouseWheelScrollingLogic;
import androidx.compose.foundation.gestures.MouseWheelScrollingLogicKt;
import androidx.compose.foundation.gestures.NestedScrollScope;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.c;
import androidx.compose.foundation.lazy.grid.LazyGridMeasureResult;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.lazy.layout.PrefetchHandleProvider;
import androidx.compose.foundation.lazy.layout.PrefetchScheduler;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.PlatformTextInputService;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.core.content.FileProvider;
import androidx.core.net.UriKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.BasePlayer;
import androidx.media3.common.Player;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.NavHostController;
import androidx.navigation.internal.NavControllerImpl;
import coil3.compose.AsyncImagePainter;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlin.time.Instant;
import kotlin.time.InstantJvmKt;
import kotlinx.coroutines.CoroutineScope;
import net.blip.android.R;
import net.blip.libblip.DispatcherKt;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;
import net.blip.libblip.PeerId;
import net.blip.shared.AvatarKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class s2 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;

    public /* synthetic */ s2(Ref$BooleanRef ref$BooleanRef, NavControllerImpl navControllerImpl, NavDestination navDestination, Bundle bundle) {
        this.j = 8;
        this.n = ref$BooleanRef;
        this.l = navControllerImpl;
        this.m = navDestination;
        this.k = bundle;
    }

    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        long j;
        long b;
        Uri d;
        int i = this.j;
        int i2 = 0;
        Unit unit = Unit.a;
        Object obj2 = this.n;
        Object obj3 = this.m;
        Object obj4 = this.l;
        Object obj5 = this.k;
        switch (i) {
            case 0:
                Animatable animatable = (Animatable) obj4;
                AnimationState animationState = (AnimationState) obj3;
                Function1 function1 = (Function1) obj5;
                Ref$BooleanRef ref$BooleanRef = (Ref$BooleanRef) obj2;
                AnimationScope animationScope = (AnimationScope) obj;
                AnimationState animationState2 = animatable.c;
                SuspendAnimationKt.i(animationScope, animationState2);
                SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) animationScope.e;
                Object e = animatable.e(snapshotMutableStateImpl.getValue());
                if (!Intrinsics.a(e, snapshotMutableStateImpl.getValue())) {
                    ((SnapshotMutableStateImpl) animationState2.k).setValue(e);
                    ((SnapshotMutableStateImpl) animationState.k).setValue(e);
                    if (function1 != null) {
                        function1.b(animatable);
                    }
                    animationScope.a();
                    ref$BooleanRef.j = true;
                } else if (function1 != null) {
                    function1.b(animatable);
                }
                return unit;
            case 1:
                Instant instant = (Instant) obj4;
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AvatarKt.a;
                ((AsyncImagePainter.State.Success) obj).getClass();
                Instant a = InstantJvmKt.a.a();
                a.getClass();
                instant.getClass();
                Duration.Companion companion = Duration.k;
                Boolean bool = (Boolean) ((Function1) obj5).b(new Duration(Duration.g(DurationKt.e(a.j - instant.j, DurationUnit.m), DurationKt.d(a.k - instant.k, DurationUnit.k))));
                bool.getClass();
                ((MutableState) obj3).setValue(bool);
                ((MutableState) obj2).setValue(Boolean.TRUE);
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                LegacyTextFieldState legacyTextFieldState = (LegacyTextFieldState) obj4;
                TextInputService textInputService = (TextInputService) obj3;
                TextFieldValue textFieldValue = (TextFieldValue) obj5;
                ImeOptions imeOptions = (ImeOptions) obj2;
                if (legacyTextFieldState.b()) {
                    EditProcessor editProcessor = legacyTextFieldState.d;
                    t6 t6Var = legacyTextFieldState.v;
                    t6 t6Var2 = legacyTextFieldState.w;
                    ?? obj6 = new Object();
                    p2 p2Var = new p2(editProcessor, t6Var, (Object) obj6, 17);
                    PlatformTextInputService platformTextInputService = textInputService.a;
                    platformTextInputService.c(textFieldValue, imeOptions, p2Var, t6Var2);
                    TextInputSession textInputSession = new TextInputSession(textInputService, platformTextInputService);
                    textInputService.b.set(textInputSession);
                    obj6.j = textInputSession;
                    legacyTextFieldState.e = textInputSession;
                }
                return new Object();
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                Player player = (ExoPlayer) obj4;
                MutableState mutableState = (MutableState) obj3;
                MutableState mutableState2 = (MutableState) obj5;
                MutableState mutableState3 = (MutableState) obj2;
                Float f = (Float) obj;
                float floatValue = f.floatValue();
                if (((Float) mutableState.getValue()) == null) {
                    mutableState2.setValue(Boolean.valueOf(((BasePlayer) player).X()));
                    ((BasePlayer) player).u(false);
                }
                mutableState.setValue(f);
                mutableState3.setValue(f);
                ((BasePlayer) player).Z(5, floatValue);
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                InfiniteTransition infiniteTransition = (InfiniteTransition) obj3;
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj5;
                CoroutineScope coroutineScope = (CoroutineScope) obj2;
                long longValue = ((Long) obj).longValue();
                State state = (State) ((MutableState) obj4).getValue();
                if (state != null) {
                    j = ((Number) state.getValue()).longValue();
                } else {
                    j = longValue;
                }
                long j2 = infiniteTransition.c;
                MutableVector mutableVector = infiniteTransition.a;
                if (j2 == Long.MIN_VALUE || ref$FloatRef.j != SuspendAnimationKt.h(coroutineScope.getCoroutineContext())) {
                    infiniteTransition.c = longValue;
                    Object[] objArr = mutableVector.j;
                    int i3 = mutableVector.l;
                    for (int i4 = 0; i4 < i3; i4++) {
                        ((InfiniteTransition.TransitionAnimationState) objArr[i4]).p = true;
                    }
                    ref$FloatRef.j = SuspendAnimationKt.h(coroutineScope.getCoroutineContext());
                }
                float f2 = ref$FloatRef.j;
                if (f2 == 0.0f) {
                    Object[] objArr2 = mutableVector.j;
                    int i5 = mutableVector.l;
                    while (i2 < i5) {
                        InfiniteTransition.TransitionAnimationState transitionAnimationState = (InfiniteTransition.TransitionAnimationState) objArr2[i2];
                        ((SnapshotMutableStateImpl) transitionAnimationState.m).setValue(transitionAnimationState.n.c);
                        transitionAnimationState.p = true;
                        i2++;
                    }
                } else {
                    long j3 = ((float) (j - infiniteTransition.c)) / f2;
                    Object[] objArr3 = mutableVector.j;
                    int i6 = mutableVector.l;
                    boolean z = true;
                    for (int i7 = 0; i7 < i6; i7++) {
                        InfiniteTransition.TransitionAnimationState transitionAnimationState2 = (InfiniteTransition.TransitionAnimationState) objArr3[i7];
                        if (!transitionAnimationState2.o) {
                            ((SnapshotMutableStateImpl) InfiniteTransition.this.b).setValue(Boolean.FALSE);
                            if (transitionAnimationState2.p) {
                                transitionAnimationState2.p = false;
                                transitionAnimationState2.q = j3;
                            }
                            long j4 = j3 - transitionAnimationState2.q;
                            ((SnapshotMutableStateImpl) transitionAnimationState2.m).setValue(transitionAnimationState2.n.f(j4));
                            transitionAnimationState2.o = transitionAnimationState2.n.e(j4);
                        }
                        if (!transitionAnimationState2.o) {
                            z = false;
                        }
                    }
                    ((SnapshotMutableStateImpl) infiniteTransition.d).setValue(Boolean.valueOf(!z));
                }
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                List list = (List) obj4;
                Ref$IntRef ref$IntRef = (Ref$IntRef) obj3;
                List list2 = (List) obj5;
                LazyGridMeasureResult lazyGridMeasureResult = (LazyGridMeasureResult) obj2;
                LazyLayoutPrefetchState.PrefetchResultScope prefetchResultScope = (LazyLayoutPrefetchState.PrefetchResultScope) obj;
                int c = prefetchResultScope.c();
                int i8 = 0;
                while (i2 < c) {
                    if (lazyGridMeasureResult.r == Orientation.j) {
                        b = prefetchResultScope.b(i2) & 4294967295L;
                    } else {
                        b = prefetchResultScope.b(i2) >> 32;
                    }
                    i8 += (int) b;
                    i2++;
                }
                if (list != null) {
                    list.add(Integer.valueOf(i8));
                }
                if (ref$IntRef.j != list2.size()) {
                    ref$IntRef.j++;
                }
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                final LazyLayoutPrefetchState lazyLayoutPrefetchState = (LazyLayoutPrefetchState) obj4;
                lazyLayoutPrefetchState.c = new PrefetchHandleProvider((LazyLayoutItemContentFactory) obj3, (SubcomposeLayoutState) obj5, (PrefetchScheduler) obj2);
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutKt$LazyLayout$lambda$1$2$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        LazyLayoutPrefetchState lazyLayoutPrefetchState2 = LazyLayoutPrefetchState.this;
                        PrefetchHandleProvider prefetchHandleProvider = lazyLayoutPrefetchState2.c;
                        if (prefetchHandleProvider != null) {
                            prefetchHandleProvider.d = false;
                        }
                        lazyLayoutPrefetchState2.c = null;
                    }
                };
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Ref$FloatRef ref$FloatRef2 = (Ref$FloatRef) obj4;
                MouseWheelScrollingLogic mouseWheelScrollingLogic = (MouseWheelScrollingLogic) obj3;
                NestedScrollScope nestedScrollScope = (NestedScrollScope) obj5;
                c cVar = (c) obj2;
                AnimationScope animationScope2 = (AnimationScope) obj;
                float floatValue2 = ((Number) ((SnapshotMutableStateImpl) animationScope2.e).getValue()).floatValue() - ref$FloatRef2.j;
                if (!MouseWheelScrollingLogicKt.a(floatValue2)) {
                    if (!MouseWheelScrollingLogicKt.a(floatValue2 - mouseWheelScrollingLogic.e(nestedScrollScope, floatValue2))) {
                        animationScope2.a();
                        return unit;
                    }
                    ref$FloatRef2.j += floatValue2;
                }
                if (((Boolean) cVar.b(Float.valueOf(ref$FloatRef2.j))).booleanValue()) {
                    animationScope2.a();
                }
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                navBackStackEntry.getClass();
                ((Ref$BooleanRef) obj2).j = true;
                ((NavControllerImpl) obj4).a((NavDestination) obj3, (Bundle) obj5, navBackStackEntry, EmptyList.j);
                return unit;
            case KeyModifiers.a /* 9 */:
                Function1 function12 = (Function1) obj5;
                PeerId peerId = (PeerId) obj4;
                NavHostController navHostController = (NavHostController) obj3;
                Context context = (Context) obj2;
                List list3 = (List) obj;
                list3.getClass();
                if (!list3.isEmpty()) {
                    Serializable a2 = DispatcherKt.a(function12, peerId, list3, "peer_view");
                    Throwable a3 = Result.a(a2);
                    if (a3 == null) {
                        navHostController.c();
                    } else {
                        Logger logger = LoggerKt.a;
                        Pair[] pairArr = {new Pair("origin", "peer_view"), new Pair("err", a3)};
                        logger.getClass();
                        Logger.e("unable to start transfer", pairArr);
                        Toast.makeText(context, "Unable to start transfer", 0).show();
                    }
                }
                return unit;
            default:
                Function1 function13 = (Function1) obj5;
                String str = (String) obj4;
                NavHostController navHostController2 = (NavHostController) obj3;
                Context context2 = (Context) obj2;
                List<Uri> list4 = (List) obj;
                list4.getClass();
                ArrayList arrayList = new ArrayList();
                for (Uri uri : list4) {
                    String scheme = uri.getScheme();
                    if (scheme != null) {
                        int hashCode = scheme.hashCode();
                        if (hashCode != 3143036) {
                            if (hashCode == 951530617 && scheme.equals("content")) {
                                d = uri;
                            }
                            LoggerKt.a.getClass();
                            Logger.k("ShareInApp", "Unsupported URI scheme: " + uri, new Pair[0]);
                            d = null;
                        } else {
                            if (scheme.equals("file")) {
                                d = FileProvider.d(context2, context2.getString(R.string.fileProviderAuthority), UriKt.a(uri));
                            }
                            LoggerKt.a.getClass();
                            Logger.k("ShareInApp", "Unsupported URI scheme: " + uri, new Pair[0]);
                            d = null;
                        }
                    } else {
                        d = FileProvider.d(context2, context2.getString(R.string.fileProviderAuthority), new File(uri.toString()));
                    }
                    if (d != null) {
                        arrayList.add(d);
                    }
                }
                if (!arrayList.isEmpty()) {
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.m(arrayList, 10));
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(((Uri) it.next()).toString());
                    }
                    Serializable a4 = DispatcherKt.a(function13, null, arrayList2, str);
                    Throwable a5 = Result.a(a4);
                    if (a5 == null) {
                        NavController.b(navHostController2, "createTransfer/" + ((String) a4) + "?isFromShareIntent=false");
                    } else {
                        Logger logger2 = LoggerKt.a;
                        Pair[] pairArr2 = {new Pair("origin", str), new Pair("err", a5)};
                        logger2.getClass();
                        Logger.e("unable to start transfer", pairArr2);
                        Toast.makeText(context2, "Unable to start transfer", 0).show();
                    }
                }
                return unit;
        }
    }

    public /* synthetic */ s2(ArrayList arrayList, Ref$IntRef ref$IntRef, List list, int i, LazyGridMeasureResult lazyGridMeasureResult) {
        this.j = 5;
        this.l = arrayList;
        this.m = ref$IntRef;
        this.k = list;
        this.n = lazyGridMeasureResult;
    }

    public /* synthetic */ s2(Function1 function1, Serializable serializable, NavHostController navHostController, Context context, int i) {
        this.j = i;
        this.k = function1;
        this.l = serializable;
        this.m = navHostController;
        this.n = context;
    }

    public /* synthetic */ s2(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.j = i;
        this.l = obj;
        this.m = obj2;
        this.k = obj3;
        this.n = obj4;
    }

    public /* synthetic */ s2(Instant instant, Function1 function1, MutableState mutableState, MutableState mutableState2) {
        this.j = 1;
        this.l = instant;
        this.k = function1;
        this.m = mutableState;
        this.n = mutableState2;
    }
}
