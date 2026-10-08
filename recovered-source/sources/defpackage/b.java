package defpackage;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.Window;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.foundation.gestures.BringIntoViewRequestPriorityQueue;
import androidx.compose.foundation.gestures.ContentInViewNode;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.foundation.lazy.grid.GridItemSpan;
import androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;
import androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
import androidx.compose.foundation.lazy.grid.LazyGridSpanLayoutProvider;
import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.BlockGraphicsLayerModifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.spatial.ThrottledCallbacks;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupLayout;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.navigation.NamedNavArgument;
import androidx.navigation.NavArgument;
import androidx.navigation.NavArgumentBuilder;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.NavOptions;
import androidx.navigation.NavOptionsBuilder;
import androidx.navigation.NavType;
import androidx.navigation.compose.ComposeNavigator;
import androidx.navigation.compose.NavGraphBuilderKt;
import androidx.navigation.compose.NavHostEventHandler;
import androidx.navigation.internal.NavControllerImpl;
import androidx.navigationevent.NavigationEventDispatcher;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.Dependency;
import androidx.work.impl.model.DependencyDao_Impl;
import com.google.accompanist.permissions.MutablePermissionState;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.text.MatchResult;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.android.HandlerContext;
import net.blip.android.ui.navigation.ComposableSingletons$NavigationRootKt;
import net.blip.android.ui.navigation.NavResultWriter;
import net.blip.android.ui.navigation.NavigationResultStore;
import net.blip.android.ui.navigation.NavigationRootKt;
import net.blip.libblip.PeerId;
import net.blip.libblip.PeerId_DerivedKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;

    public /* synthetic */ b(int i, Object obj, Object obj2) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
    }

    /* JADX WARN: Type inference failed for: r2v8, types: [net.blip.android.ui.gallery.GalleryVideoPlayerKt$Scrubber$1$1$runnable$1] */
    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        Window window;
        NavGraph navGraph;
        Lifecycle g;
        NavType navType;
        int i = this.j;
        Activity activity = null;
        int i2 = 1;
        Unit unit = Unit.a;
        Object obj2 = this.l;
        Object obj3 = this.k;
        switch (i) {
            case 0:
                ((MutableInteractionSource) obj3).b((PressInteraction.Cancel) obj2);
                return unit;
            case 1:
                PopupLayout popupLayout = (PopupLayout) obj3;
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidPopup_androidKt.a;
                popupLayout.setPositionProvider((PopupPositionProvider) obj2);
                popupLayout.r();
                return new Object();
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                h hVar = AndroidViewHolder.J;
                ((LayoutNode) obj3).h0(((Modifier) obj).l((Modifier) obj2));
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                NavResultWriter navResultWriter = (NavResultWriter) obj3;
                Uri uri = (Uri) obj;
                uri.getClass();
                List B = CollectionsKt.B(uri);
                navResultWriter.getClass();
                LinkedHashMap linkedHashMap = NavigationResultStore.a;
                NavigationResultStore.a.put(Integer.valueOf(navResultWriter.a), B);
                ((NavHostController) obj2).c();
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                AwaitFirstLayoutModifier.Node node = (AwaitFirstLayoutModifier.Node) obj3;
                AwaitFirstLayoutModifier awaitFirstLayoutModifier = (AwaitFirstLayoutModifier) obj2;
                ThrottledCallbacks.Entry entry = node.x;
                if (entry != null) {
                    entry.b();
                }
                node.x = null;
                CompletableDeferred completableDeferred = awaitFirstLayoutModifier.c;
                if (completableDeferred != null) {
                    completableDeferred.E0(unit);
                }
                awaitFirstLayoutModifier.c = null;
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                Function1 function1 = (Function1) obj2;
                TextFieldValue textFieldValue = (TextFieldValue) obj;
                int i3 = BasicTextFieldKt.a;
                if (!Intrinsics.a((TextFieldValue) obj3, textFieldValue)) {
                    function1.b(textFieldValue);
                }
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                Placeable.PlacementScope.n((Placeable.PlacementScope) obj, (Placeable) obj3, 0, 0, ((BlockGraphicsLayerModifier) obj2).x, 4);
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) ((ContentDrawScope) obj);
                layoutNodeDrawScope.a();
                DrawScope.H(layoutNodeDrawScope, (AndroidPath) obj3, (Brush) obj2, 0.0f, null, 60);
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                LayoutNodeDrawScope layoutNodeDrawScope2 = (LayoutNodeDrawScope) ((ContentDrawScope) obj);
                layoutNodeDrawScope2.a();
                DrawScope.H(layoutNodeDrawScope2, ((Outline.Generic) obj3).a, (Brush) obj2, 0.0f, null, 60);
                return unit;
            case KeyModifiers.a /* 9 */:
                ((BringIntoViewRequestPriorityQueue) obj3).a.j((ContentInViewNode.Request) obj2);
                return unit;
            case KeyModifiers.b /* 10 */:
                LegacyTextFieldState legacyTextFieldState = (LegacyTextFieldState) obj3;
                Brush brush = (Brush) obj2;
                LayoutNodeDrawScope layoutNodeDrawScope3 = (LayoutNodeDrawScope) ((ContentDrawScope) obj);
                layoutNodeDrawScope3.a();
                if (((Boolean) ((SnapshotMutableStateImpl) legacyTextFieldState.s).getValue()).booleanValue() || ((Boolean) ((SnapshotMutableStateImpl) legacyTextFieldState.t).getValue()).booleanValue()) {
                    DrawScope.O(layoutNodeDrawScope3, brush, 0L, 0L, 0.0f, null, 126);
                }
                return unit;
            case 11:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                ((DependencyDao_Impl) obj3).b.c(sQLiteConnection, (Dependency) obj2);
                return unit;
            case KeyModifiers.c /* 12 */:
                ((MutableInteractionSource) obj3).b((Interaction) obj2);
                return unit;
            case 13:
                View view = (View) obj3;
                MutableState mutableState = (MutableState) obj2;
                ((DisposableEffectScope) obj).getClass();
                Context context = view.getContext();
                if (context instanceof Activity) {
                    activity = (Activity) context;
                }
                if (activity != null && (window = activity.getWindow()) != null) {
                    final WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(window, view);
                    if (((Boolean) mutableState.getValue()).booleanValue()) {
                        windowInsetsControllerCompat.a();
                    } else {
                        windowInsetsControllerCompat.d();
                    }
                    return new DisposableEffectResult() { // from class: net.blip.android.ui.gallery.GalleryScreenKt$GalleryScreen$lambda$4$0$$inlined$onDispose$1
                        @Override // androidx.compose.runtime.DisposableEffectResult
                        public final void a() {
                            WindowInsetsControllerCompat.this.d();
                        }
                    };
                }
                throw new Exception("Not in an activity - unable to get Window reference");
            case 14:
                final ExoPlayer exoPlayer = (ExoPlayer) obj3;
                final MutableState mutableState2 = (MutableState) obj2;
                ((DisposableEffectScope) obj).getClass();
                final Handler handler = new Handler(Looper.getMainLooper());
                final ?? r2 = new Runnable() { // from class: net.blip.android.ui.gallery.GalleryVideoPlayerKt$Scrubber$1$1$runnable$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        mutableState2.setValue(Float.valueOf((float) ExoPlayer.this.S()));
                        handler.postDelayed(this, 16L);
                    }
                };
                r2.run();
                return new DisposableEffectResult() { // from class: net.blip.android.ui.gallery.GalleryVideoPlayerKt$Scrubber$lambda$6$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        handler.removeCallbacks(r2);
                    }
                };
            case 15:
                ((HandlerContext) obj3).l.removeCallbacks((f3) obj2);
                return unit;
            case 16:
                Ref$IntRef ref$IntRef = (Ref$IntRef) obj3;
                Ref$IntRef ref$IntRef2 = (Ref$IntRef) obj2;
                MatchResult matchResult = (MatchResult) obj;
                if (ref$IntRef.j == -1) {
                    ref$IntRef.j = matchResult.b().j;
                }
                ref$IntRef2.j = matchResult.b().k + 1;
                return "";
            case 17:
                PeerId peerId = (PeerId) obj;
                peerId.getClass();
                NavController.b((NavController) obj3, "peer/".concat(PeerId_DerivedKt.b(peerId)));
                ((MutableState) obj2).setValue(Boolean.FALSE);
                return unit;
            case 18:
                Function0 function0 = (Function0) obj3;
                MutableState mutableState3 = (MutableState) obj2;
                Boolean bool = (Boolean) obj;
                boolean booleanValue = bool.booleanValue();
                if (((Boolean) mutableState3.getValue()).booleanValue() && !booleanValue) {
                    function0.a();
                }
                mutableState3.setValue(bool);
                return unit;
            case 19:
                final InfiniteTransition infiniteTransition = (InfiniteTransition) obj3;
                final InfiniteTransition.TransitionAnimationState transitionAnimationState = (InfiniteTransition.TransitionAnimationState) obj2;
                infiniteTransition.a.b(transitionAnimationState);
                ((SnapshotMutableStateImpl) infiniteTransition.b).setValue(Boolean.TRUE);
                return new DisposableEffectResult() { // from class: androidx.compose.animation.core.InfiniteTransitionKt$animateValue$lambda$2$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        InfiniteTransition.this.a.j(transitionAnimationState);
                    }
                };
            case 20:
                MutableState mutableState4 = (MutableState) obj3;
                MutableState mutableState5 = (MutableState) obj2;
                FocusState focusState = (FocusState) obj;
                focusState.getClass();
                FocusStateImpl focusStateImpl = (FocusStateImpl) focusState;
                if (((Boolean) mutableState4.getValue()).booleanValue() != focusStateImpl.b()) {
                    mutableState4.setValue(Boolean.valueOf(focusStateImpl.b()));
                    if (((Boolean) mutableState4.getValue()).booleanValue()) {
                        mutableState5.setValue(Boolean.FALSE);
                    }
                }
                return unit;
            case 21:
                LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 = (LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1) obj2;
                LazyGridSpanLayoutProvider.LineConfiguration b = ((LazyGridSpanLayoutProvider) obj3).b(((Integer) obj).intValue());
                int i4 = b.a;
                List list = b.b;
                ArrayList arrayList = new ArrayList(list.size());
                int size = list.size();
                int i5 = 0;
                for (int i6 = 0; i6 < size; i6++) {
                    int i7 = (int) ((GridItemSpan) list.get(i6)).a;
                    arrayList.add(new Pair(Integer.valueOf(i4), new Constraints(lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1.a(i5, i7))));
                    i4++;
                    i5 += i7;
                }
                return arrayList;
            case 22:
                LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$12 = (LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1) obj3;
                LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1 = (LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1) obj2;
                int intValue = ((Integer) obj).intValue();
                LazyGridSpanLayoutProvider lazyGridSpanLayoutProvider = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$12.e;
                int i8 = lazyGridSpanLayoutProvider.i;
                int e = lazyGridSpanLayoutProvider.e(intValue);
                return lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1.c(intValue, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$12.a(0, e), 0, e, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1.d);
            case 23:
                MutablePermissionState mutablePermissionState = (MutablePermissionState) obj3;
                Boolean bool2 = (Boolean) obj;
                bool2.getClass();
                ((SnapshotMutableStateImpl) mutablePermissionState.d).setValue(mutablePermissionState.c());
                ((Function1) obj2).b(bool2);
                return unit;
            case 24:
                final MutablePermissionState mutablePermissionState2 = (MutablePermissionState) obj3;
                ((DisposableEffectScope) obj).getClass();
                mutablePermissionState2.e = (ManagedActivityResultLauncher) obj2;
                return new DisposableEffectResult() { // from class: com.google.accompanist.permissions.MutablePermissionStateKt$rememberMutablePermissionState$lambda$7$lambda$6$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        MutablePermissionState.this.e = null;
                    }
                };
            case 25:
                NavDestination navDestination = (NavDestination) obj3;
                NavControllerImpl navControllerImpl = ((NavController) obj2).b;
                NavOptionsBuilder navOptionsBuilder = (NavOptionsBuilder) obj;
                navOptionsBuilder.getClass();
                NavOptions.Builder builder = navOptionsBuilder.a;
                builder.f = 0;
                builder.g = 0;
                if (navDestination instanceof NavGraph) {
                    int i9 = NavDestination.n;
                    Iterator it = NavDestination.Companion.b(navDestination).iterator();
                    while (true) {
                        if (it.hasNext()) {
                            NavDestination navDestination2 = (NavDestination) it.next();
                            NavDestination f = navControllerImpl.f();
                            if (f != null) {
                                navGraph = f.l;
                            } else {
                                navGraph = null;
                            }
                            if (Intrinsics.a(navDestination2, navGraph)) {
                            }
                        } else {
                            int i10 = NavGraph.p;
                            navOptionsBuilder.d = NavGraph.Companion.a(navControllerImpl.g()).k.d;
                            navOptionsBuilder.e = true;
                        }
                    }
                }
                return unit;
            case 26:
                final NavHostEventHandler navHostEventHandler = (NavHostEventHandler) obj2;
                NavigationEventDispatcher.a((NavigationEventDispatcher) obj3, navHostEventHandler);
                return new DisposableEffectResult() { // from class: androidx.navigation.compose.NavHostEventHandlerKt$rememberNavHostEventHandler$lambda$3$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        NavHostEventHandler.this.e();
                    }
                };
            case 27:
                final State state = (State) obj3;
                final ComposeNavigator composeNavigator = (ComposeNavigator) obj2;
                return new DisposableEffectResult() { // from class: androidx.navigation.compose.NavHostKt$NavHost$lambda$28$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        Iterator it2 = ((List) State.this.getValue()).iterator();
                        while (it2.hasNext()) {
                            composeNavigator.b().b((NavBackStackEntry) it2.next());
                        }
                    }
                };
            case 28:
                NavHostController navHostController = (NavHostController) obj3;
                LifecycleOwner lifecycleOwner = (LifecycleOwner) obj2;
                navHostController.getClass();
                lifecycleOwner.getClass();
                NavControllerImpl navControllerImpl2 = navHostController.b;
                h5 h5Var = navControllerImpl2.s;
                if (!lifecycleOwner.equals(navControllerImpl2.o)) {
                    LifecycleOwner lifecycleOwner2 = navControllerImpl2.o;
                    if (lifecycleOwner2 != null && (g = lifecycleOwner2.g()) != null) {
                        g.b(h5Var);
                    }
                    navControllerImpl2.o = lifecycleOwner;
                    lifecycleOwner.g().a(h5Var);
                }
                return new Object();
            default:
                final NavHostController navHostController2 = (NavHostController) obj3;
                final Function0 function02 = (Function0) obj2;
                NavGraphBuilder navGraphBuilder = (NavGraphBuilder) obj;
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = NavigationRootKt.a;
                navGraphBuilder.getClass();
                NavGraphBuilderKt.a(navGraphBuilder, "onboarding", null, ComposableSingletons$NavigationRootKt.b, 254);
                NavGraphBuilderKt.a(navGraphBuilder, "home", null, new ComposableLambdaImpl(-1814150654, true, new q8(i2, navHostController2)), 254);
                ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(1363742561, true, new Function5() { // from class: cc
                    @Override // kotlin.jvm.functions.Function5
                    public final Object q(Object obj4, Object obj5, Object obj6, Object obj7, Integer num) {
                        String str = (String) obj5;
                        boolean booleanValue2 = ((Boolean) obj6).booleanValue();
                        Composer composer = (Composer) obj7;
                        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal3 = NavigationRootKt.a;
                        ((NavBackStackEntry) obj4).getClass();
                        str.getClass();
                        NavigationRootKt.a(ComposableLambdaKt.b(-1252163595, new dc(str, booleanValue2, Function0.this, navHostController2, 0), composer), composer, 6);
                        return Unit.a;
                    }
                });
                new NavArgumentBuilder();
                Boolean bool3 = Boolean.FALSE;
                if (bool3 instanceof int[]) {
                    navType = NavType.b;
                } else if (bool3 instanceof long[]) {
                    navType = NavType.d;
                } else if (bool3 instanceof float[]) {
                    navType = NavType.f;
                } else {
                    navType = NavType.g;
                }
                NavGraphBuilderKt.a(navGraphBuilder, "createTransfer/{transferId}?isFromShareIntent={isFromShareIntent}", CollectionsKt.B(new NamedNavArgument(new NavArgument(navType, bool3, true))), new ComposableLambdaImpl(584580535, true, new fa(composableLambdaImpl, 2)), 252);
                NavGraphBuilderKt.a(navGraphBuilder, "settings", null, ComposableSingletons$NavigationRootKt.d, 254);
                NavGraphBuilderKt.a(navGraphBuilder, "settings/profile", null, ComposableSingletons$NavigationRootKt.f, 254);
                NavGraphBuilderKt.a(navGraphBuilder, "settings/device/{deviceId}", null, new ComposableLambdaImpl(337971526, true, new t5(17)), 254);
                NavGraphBuilderKt.a(navGraphBuilder, "help/sendToYourDevices", null, ComposableSingletons$NavigationRootKt.i, 254);
                NavGraphBuilderKt.a(navGraphBuilder, "help/sendToOtherPeople", null, ComposableSingletons$NavigationRootKt.k, 254);
                NavGraphBuilderKt.a(navGraphBuilder, "gallery/{urls}", null, new ComposableLambdaImpl(319448723, true, new t5(15)), 254);
                NavGraphBuilderKt.a(navGraphBuilder, "peer/{peerId}", null, new ComposableLambdaImpl(-1854326371, true, new t5(16)), 254);
                NavGraphBuilderKt.a(navGraphBuilder, "audioPicker/{requestId}", null, new ComposableLambdaImpl(-1152646495, true, new t5(14)), 254);
                return unit;
        }
    }
}
