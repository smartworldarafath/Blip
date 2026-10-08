package defpackage;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.inputmethodservice.InputMethodService;
import android.os.Build;
import android.os.Handler;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.InputMethodManager;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.grid.LazyGridMeasureResult;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextFieldScrollerPosition;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest;
import androidx.compose.material.DrawerKt;
import androidx.compose.material.DrawerState;
import androidx.compose.material.ripple.AndroidRippleNode;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.retain.ManagedRetainedValuesStore;
import androidx.compose.runtime.retain.impl.PreconditionsKt;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.node.BackwardsCompatNode;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeLayoutDelegate;
import androidx.compose.ui.node.LookaheadPassDelegate;
import androidx.compose.ui.platform.AndroidPlatformTextInputSession;
import androidx.compose.ui.platform.ComposeViewContext;
import androidx.compose.ui.platform.DerivedSize;
import androidx.compose.ui.platform.LifecycleRetainedValuesStoreOwner;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.input.InputMethodManagerImpl;
import androidx.compose.ui.unit.AndroidDensity_androidKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.window.PopupProperties;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.room.BaseRoomConnectionManager;
import androidx.room.InvalidationTracker;
import androidx.window.layout.WindowMetrics;
import androidx.window.layout.WindowMetricsCalculator;
import androidx.window.layout.WindowMetricsCalculatorCompat;
import androidx.window.layout.util.WindowMetricsCompatHelper;
import androidx.window.layout.util.WindowMetricsCompatHelperApi30Impl;
import androidx.window.layout.util.WindowMetricsCompatHelperApi34Impl;
import androidx.window.layout.util.WindowMetricsCompatHelperBaseImpl;
import androidx.work.impl.WorkDatabase_Impl;
import coil3.ImageLoader;
import coil3.memory.RealMemoryCache;
import coil3.memory.RealStrongMemoryCache;
import coil3.memory.RealWeakMemoryCache;
import com.google.accompanist.drawablepainter.DrawablePainter;
import com.squareup.wire.ProtoReader;
import io.sentry.SentryOptions;
import java.io.File;
import java.io.FileInputStream;
import java.util.List;
import kotlin.Pair;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import net.blip.android.FlavorAndroid;
import net.blip.android.notifications.FirebaseNotificationService;
import net.blip.libblip.Logger;
import net.blip.libblip.ProtoAdapter_UtilKt;
import net.blip.libblip.frontend.Auth;
import net.blip.libblip.frontend.State;
import net.blip.libblip.frontend.State$Companion$ADAPTER$1;
import okio.Okio;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class r1 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ r1(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0254  */
    /* JADX WARN: Type inference failed for: r0v27, types: [coil3.memory.MemoryCache$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v18, types: [hb] */
    @Override // kotlin.jvm.functions.Function0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a() {
        WindowMetricsCompatHelper windowMetricsCompatHelper;
        Object failure;
        int i = this.j;
        boolean z = false;
        Context context = null;
        Object obj = null;
        context = null;
        Unit unit = Unit.a;
        Object obj2 = this.k;
        switch (i) {
            case 0:
                CoroutineScopeKt.b(((AndroidPlatformTextInputSession) obj2).l, null);
                return unit;
            case 1:
                DrawModifierNodeKt.a((AndroidRippleNode) obj2);
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                return ((TextContextMenuDataProvider) obj2).V();
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                return ArrayIteratorKt.a((Object[]) obj2);
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                ((BackwardsCompatNode) obj2).x.getClass();
                throw new ClassCastException();
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                return (AnnotatedString) obj2;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return (Rect) obj2;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return CollectionsKt.B((Pair) obj2);
            case KeyModifiers.a /* 9 */:
                boolean a = IntSize.a(0L, 0L);
                View view = ((ComposeViewContext) obj2).a;
                if (a) {
                    Context context2 = view.getContext();
                    Context context3 = context2;
                    while (context3 instanceof ContextWrapper) {
                        if ((context3 instanceof Activity) || (context3 instanceof InputMethodService) || (context3 instanceof Application)) {
                            context = context3;
                        } else {
                            ContextWrapper contextWrapper = (ContextWrapper) context3;
                            if (contextWrapper.getBaseContext() != null) {
                                context3 = contextWrapper.getBaseContext();
                            }
                        }
                        if (context == null) {
                            WindowMetricsCalculator.a.getClass();
                            WindowMetricsCalculator.Companion companion = WindowMetricsCalculator.Companion.a;
                            WindowMetricsCalculatorCompat windowMetricsCalculatorCompat = WindowMetricsCalculator.Companion.b;
                            windowMetricsCalculatorCompat.getClass();
                            int i2 = Build.VERSION.SDK_INT;
                            if (i2 >= 34) {
                                windowMetricsCompatHelper = WindowMetricsCompatHelperApi34Impl.a;
                            } else if (i2 >= 30) {
                                windowMetricsCompatHelper = WindowMetricsCompatHelperApi30Impl.a;
                            } else {
                                windowMetricsCompatHelper = WindowMetricsCompatHelperBaseImpl.a;
                            }
                            WindowMetrics a2 = windowMetricsCompatHelper.a(context, windowMetricsCalculatorCompat.b);
                            long height = (4294967295L & a2.a().height()) | (a2.a().width() << 32);
                            return new DerivedSize(height, AndroidDensity_androidKt.a(context).y(IntSizeKt.a(height)));
                        }
                        Configuration configuration = context2.getResources().getConfiguration();
                        Density a3 = AndroidDensity_androidKt.a(context2);
                        long a4 = DpKt.a(configuration.screenWidthDp, configuration.screenHeightDp);
                        return new DerivedSize((4294967295L & ((int) Float.intBitsToFloat((int) (r5 & 4294967295L)))) | (((int) Float.intBitsToFloat((int) (a3.D0(a4) >> 32))) << 32), a4);
                    }
                    if (context == null) {
                    }
                } else {
                    return new DerivedSize(0L, AndroidDensity_androidKt.a(view.getContext()).y(IntSizeKt.a(0L)));
                }
                break;
            case KeyModifiers.b /* 10 */:
                return ((BaseRoomConnectionManager.DriverWrapper) obj2).a(":memory:");
            case 11:
                return ((LegacyTextFieldState) obj2).d();
            case KeyModifiers.c /* 12 */:
                return new TextFieldScrollerPosition((Orientation) obj2, 0.0f);
            case 13:
                PopupProperties popupProperties = DefaultTextContextMenuDropdownProvider_androidKt.a;
                ((TextContextMenuSession) obj2).close();
                return unit;
            case 14:
                final DrawablePainter drawablePainter = (DrawablePainter) obj2;
                return new Drawable.Callback() { // from class: com.google.accompanist.drawablepainter.DrawablePainter$callback$2$1
                    @Override // android.graphics.drawable.Drawable.Callback
                    public final void invalidateDrawable(Drawable drawable) {
                        drawable.getClass();
                        DrawablePainter drawablePainter2 = DrawablePainter.this;
                        MutableState mutableState = drawablePainter2.p;
                        ((SnapshotMutableStateImpl) mutableState).setValue(Integer.valueOf(((Number) ((SnapshotMutableStateImpl) mutableState).getValue()).intValue() + 1));
                        long a5 = DrawablePainterKt.a(drawablePainter2.o);
                        ((SnapshotMutableStateImpl) drawablePainter2.q).setValue(new Size(a5));
                    }

                    @Override // android.graphics.drawable.Drawable.Callback
                    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
                        drawable.getClass();
                        runnable.getClass();
                        ((Handler) DrawablePainterKt.a.getValue()).postAtTime(runnable, j);
                    }

                    @Override // android.graphics.drawable.Drawable.Callback
                    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
                        drawable.getClass();
                        runnable.getClass();
                        ((Handler) DrawablePainterKt.a.getValue()).removeCallbacks(runnable);
                    }
                };
            case 15:
                Density a5 = ((DrawerState) obj2).a();
                TweenSpec tweenSpec = DrawerKt.a;
                return Float.valueOf(a5.i0(400.0f));
            case 16:
                FirebaseNotificationService firebaseNotificationService = (FirebaseNotificationService) obj2;
                int i3 = FirebaseNotificationService.v;
                try {
                    File file = new File(firebaseNotificationService.getApplicationContext().getFilesDir(), "state.dat");
                    State$Companion$ADAPTER$1 state$Companion$ADAPTER$1 = State.E;
                    FileInputStream fileInputStream = new FileInputStream(file);
                    state$Companion$ADAPTER$1.getClass();
                    return (State) state$Companion$ADAPTER$1.c(new ProtoReader(new RealBufferedSource(Okio.e(fileInputStream))));
                } catch (Exception e) {
                    firebaseNotificationService.u.getClass();
                    Logger.f(e, new Pair[0]);
                    return null;
                }
            case 17:
                FlavorAndroid flavorAndroid = (FlavorAndroid) obj2;
                try {
                    Auth auth = ((State) ProtoAdapter_UtilKt.a(State.E, flavorAndroid.d + "/state.dat")).r;
                    if (auth != null) {
                        failure = auth.o;
                    } else {
                        failure = null;
                    }
                } catch (Throwable th) {
                    failure = new Result.Failure(th);
                }
                if (!(failure instanceof Result.Failure)) {
                    obj = failure;
                }
                return (String) obj;
            case 18:
                ((FocusTargetNode) obj2).a1();
                return unit;
            case 19:
                return Integer.valueOf(((List) obj2).size());
            case 20:
                ?? obj3 = new Object();
                final Context context4 = ((ImageLoader.Builder) obj2).a;
                final double d = 0.2d;
                try {
                    Object systemService = context4.getSystemService((Class<Object>) ActivityManager.class);
                    systemService.getClass();
                    if (((ActivityManager) systemService).isLowRamDevice()) {
                        d = 0.15d;
                    }
                } catch (Exception unused) {
                }
                if (0.0d <= d && d <= 1.0d) {
                    obj3.a = new Function0() { // from class: hb
                        @Override // kotlin.jvm.functions.Function0
                        public final Object a() {
                            int i4;
                            Context context5 = context4;
                            try {
                                Object systemService2 = context5.getSystemService((Class<Object>) ActivityManager.class);
                                systemService2.getClass();
                                ActivityManager activityManager = (ActivityManager) systemService2;
                                if ((context5.getApplicationInfo().flags & 1048576) != 0) {
                                    i4 = activityManager.getLargeMemoryClass();
                                } else {
                                    i4 = activityManager.getMemoryClass();
                                }
                            } catch (Exception unused2) {
                                i4 = 256;
                            }
                            return Long.valueOf((long) (d * i4 * SentryOptions.MAX_EVENT_SIZE_BYTES));
                        }
                    };
                    RealWeakMemoryCache realWeakMemoryCache = new RealWeakMemoryCache();
                    hb hbVar = obj3.a;
                    if (hbVar != null) {
                        return new RealMemoryCache(new RealStrongMemoryCache(((Number) hbVar.a()).longValue(), realWeakMemoryCache), realWeakMemoryCache);
                    }
                    u2.l("maxSizeBytesFactory == null");
                    return null;
                }
                u2.g("percent must be in the range [0.0, 1.0].");
                return null;
            case 21:
                return Float.valueOf(SuspendAnimationKt.h(((CoroutineScope) obj2).getCoroutineContext()));
            case 22:
                Object systemService2 = ((InputMethodManagerImpl) obj2).a.getContext().getSystemService("input_method");
                systemService2.getClass();
                return (InputMethodManager) systemService2;
            case 23:
                Object systemService3 = ((androidx.compose.foundation.text.input.internal.InputMethodManagerImpl) obj2).a.getContext().getSystemService("input_method");
                systemService3.getClass();
                return (InputMethodManager) systemService3;
            case 24:
                WorkDatabase_Impl workDatabase_Impl = ((InvalidationTracker) obj2).a;
                if (!workDatabase_Impl.j() || workDatabase_Impl.m()) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 25:
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = ((LayoutNode) obj2).P;
                layoutNodeLayoutDelegate.p.J = true;
                LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
                if (lookaheadPassDelegate != null) {
                    lookaheadPassDelegate.D = true;
                }
                return unit;
            case 26:
                return Integer.valueOf(((LazyGridMeasureResult) ((SnapshotMutableStateImpl) ((LazyGridState) obj2).e).getValue()).m);
            case 27:
                DrawModifierNode drawModifierNode = ((LazyLayoutItemAnimator) obj2).j;
                if (drawModifierNode != null) {
                    DrawModifierNodeKt.a(drawModifierNode);
                }
                return unit;
            case 28:
                return new BaseInputConnection(((LegacyTextInputMethodRequest) obj2).a, false);
            default:
                ManagedRetainedValuesStore managedRetainedValuesStore = ((LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry) obj2).a.a;
                if (!managedRetainedValuesStore.b) {
                    if (managedRetainedValuesStore.c) {
                        PreconditionsKt.a("ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?");
                    }
                    managedRetainedValuesStore.a();
                    managedRetainedValuesStore.c = true;
                }
                return unit;
        }
    }
}
