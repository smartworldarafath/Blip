package androidx.compose.ui.platform;

import android.content.Context;
import android.content.res.Configuration;
import android.util.Log;
import android.view.View;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.HostDefaultProviderKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedback;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.res.ImageVectorCache;
import androidx.compose.ui.res.ResourceIdCache;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamilyResolver_androidKt;
import androidx.core.viewtree.ViewTree;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import defpackage.i6;
import defpackage.m0;
import defpackage.r1;
import defpackage.u2;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableSet;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ComposeViewContext {
    public final View a;
    public boolean b;
    public CompositionContext c;
    public LifecycleOwner d;
    public SavedStateRegistryOwner e;
    public ViewModelStoreOwner f;
    public final ImageVectorCache g;
    public final ResourceIdCache h;
    public final Configuration i;
    public final MutableState j;
    public final AndroidAccessibilityManager k;
    public final AndroidUriHandler l;
    public final AndroidClipboardManager m;
    public final Clipboard n;
    public final Font.ResourceLoader o;
    public final MutableState p;
    public final HapticFeedback q;
    public final AndroidViewConfiguration r;
    public final LayoutNodeDrawScope s;
    public final LazyWindowInfo t;
    public final CanvasHolder u;
    public int v;
    public AndroidSoundEffect w;
    public final ComposeViewContext$callback$1 x;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v10, types: [androidx.compose.ui.platform.AndroidAccessibilityManager] */
    /* JADX WARN: Type inference failed for: r6v18, types: [androidx.compose.ui.text.font.Font$ResourceLoader] */
    /* JADX WARN: Type inference failed for: r6v37 */
    /* JADX WARN: Type inference failed for: r6v38 */
    /* JADX WARN: Type inference failed for: r6v39 */
    /* JADX WARN: Type inference failed for: r6v40 */
    public ComposeViewContext(ComposeViewContext composeViewContext, View view, CompositionContext compositionContext, LifecycleOwner lifecycleOwner, SavedStateRegistryOwner savedStateRegistryOwner, ViewModelStoreOwner viewModelStoreOwner) {
        Context context;
        ImageVectorCache imageVectorCache;
        Configuration configuration;
        MutableState g;
        ?? r6;
        AndroidUriHandler androidUriHandler;
        AndroidClipboardManager androidClipboardManager;
        Clipboard androidClipboardImpl;
        ?? r62;
        MutableState f;
        HapticFeedback platformHapticFeedback;
        AndroidViewConfiguration androidViewConfiguration;
        CanvasHolder canvasHolder;
        LayoutNodeDrawScope layoutNodeDrawScope;
        ResourceIdCache resourceIdCache;
        View view2;
        if (composeViewContext != null && (view2 = composeViewContext.a) != null) {
            context = view2.getContext();
        } else {
            context = null;
        }
        boolean a = Intrinsics.a(context, view.getContext());
        this.a = view;
        this.c = compositionContext;
        this.d = lifecycleOwner;
        this.e = savedStateRegistryOwner;
        this.f = viewModelStoreOwner;
        if (a) {
            composeViewContext.getClass();
            imageVectorCache = composeViewContext.g;
        } else {
            imageVectorCache = new ImageVectorCache();
        }
        this.g = imageVectorCache;
        this.h = (composeViewContext == null || (resourceIdCache = composeViewContext.h) == null) ? new ResourceIdCache() : resourceIdCache;
        if (a) {
            composeViewContext.getClass();
            configuration = composeViewContext.i;
        } else {
            configuration = new Configuration(view.getContext().getResources().getConfiguration());
        }
        this.i = configuration;
        if (a) {
            composeViewContext.getClass();
            g = composeViewContext.j;
        } else {
            g = SnapshotStateKt.g(new Configuration(configuration));
        }
        this.j = g;
        if (a) {
            composeViewContext.getClass();
            r6 = composeViewContext.k;
        } else {
            Context context2 = view.getContext();
            Object obj = new Object();
            Object systemService = context2.getSystemService("accessibility");
            systemService.getClass();
            r6 = obj;
        }
        this.k = r6;
        if (a) {
            composeViewContext.getClass();
            androidUriHandler = composeViewContext.l;
        } else {
            androidUriHandler = new AndroidUriHandler(view.getContext());
        }
        this.l = androidUriHandler;
        if (a) {
            composeViewContext.getClass();
            androidClipboardManager = composeViewContext.m;
        } else {
            androidClipboardManager = new AndroidClipboardManager(view.getContext());
        }
        this.m = androidClipboardManager;
        if (a) {
            composeViewContext.getClass();
            androidClipboardImpl = composeViewContext.n;
        } else {
            androidClipboardImpl = new AndroidClipboardImpl(androidClipboardManager);
        }
        this.n = androidClipboardImpl;
        if (a) {
            composeViewContext.getClass();
            r62 = composeViewContext.o;
        } else {
            view.getContext();
            r62 = new Object();
        }
        this.o = r62;
        if (a) {
            composeViewContext.getClass();
            f = composeViewContext.p;
        } else {
            f = SnapshotStateKt.f(FontFamilyResolver_androidKt.a(view.getContext()), SnapshotStateKt.j());
        }
        this.p = f;
        if (view == (composeViewContext != null ? composeViewContext.a : null)) {
            platformHapticFeedback = composeViewContext.q;
        } else {
            platformHapticFeedback = new PlatformHapticFeedback(view);
        }
        this.q = platformHapticFeedback;
        if (a) {
            composeViewContext.getClass();
            androidViewConfiguration = composeViewContext.r;
        } else {
            androidViewConfiguration = new AndroidViewConfiguration(android.view.ViewConfiguration.get(view.getContext()));
        }
        this.r = androidViewConfiguration;
        this.s = (composeViewContext == null || (layoutNodeDrawScope = composeViewContext.s) == null) ? new LayoutNodeDrawScope() : layoutNodeDrawScope;
        this.t = new LazyWindowInfo();
        this.u = (composeViewContext == null || (canvasHolder = composeViewContext.u) == null) ? new CanvasHolder() : canvasHolder;
        new r1(9, this);
        this.x = new ComposeViewContext$callback$1(this);
    }

    public final void a(AndroidComposeView androidComposeView, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        int i3;
        int i4;
        boolean z;
        Set set;
        View view;
        Object obj;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(123858079);
        if (gapComposer.h(androidComposeView)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i5 = i2 | i;
        if (gapComposer.h(composableLambdaImpl)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i6 = i5 | i3;
        if (gapComposer.h(this)) {
            i4 = 256;
        } else {
            i4 = 128;
        }
        int i7 = i6 | i4;
        if ((i7 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i7 & 1, z)) {
            Object tag = androidComposeView.getTag(R.id.inspection_slot_table_set);
            Set set2 = null;
            if ((tag instanceof Set) && (!(tag instanceof KMappedMarker) || (tag instanceof KMutableSet))) {
                set = (Set) tag;
            } else {
                set = null;
            }
            if (set == null) {
                Object parent = androidComposeView.getParent();
                if (parent instanceof View) {
                    view = (View) parent;
                } else {
                    view = null;
                }
                if (view != null) {
                    obj = view.getTag(R.id.inspection_slot_table_set);
                } else {
                    obj = null;
                }
                if ((obj instanceof Set) && (!(obj instanceof KMappedMarker) || (obj instanceof KMutableSet))) {
                    set2 = (Set) obj;
                }
            } else {
                set2 = set;
            }
            if (set2 != null) {
                set2.add(gapComposer.v());
                gapComposer.q = true;
                gapComposer.C = true;
                gapComposer.c.c();
                gapComposer.H.c();
                SlotWriter slotWriter = gapComposer.I;
                SlotTable slotTable = slotWriter.a;
                slotWriter.e = slotTable.s;
                slotWriter.f = slotTable.t;
            }
            boolean f = gapComposer.f(androidComposeView.getView());
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (f || K == composer$Companion$Empty$1) {
                K = new ViewTreeHostDefaultProvider(androidComposeView.getView());
                gapComposer.g0(K);
            }
            ViewTreeHostDefaultProvider viewTreeHostDefaultProvider = (ViewTreeHostDefaultProvider) K;
            ProvidedValue b = LocalLifecycleOwnerKt.a.b(d());
            ProvidableCompositionLocal providableCompositionLocal = LocalSavedStateRegistryOwnerKt.a;
            g();
            SavedStateRegistryOwner savedStateRegistryOwner = this.e;
            savedStateRegistryOwner.getClass();
            ProvidedValue b2 = providableCompositionLocal.b(savedStateRegistryOwner);
            ProvidedValue b3 = AndroidCompositionLocals_androidKt.d.b(this.g);
            ProvidedValue b4 = AndroidCompositionLocals_androidKt.e.b(this.h);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionLocalsKt.v;
            boolean h = gapComposer.h(this);
            Object K2 = gapComposer.K();
            if (h || K2 == composer$Companion$Empty$1) {
                K2 = new defpackage.c(12, this);
                gapComposer.g0(K2);
            }
            ProvidedValue c = staticProvidableCompositionLocal.c((Function1) K2);
            ProvidedValue b5 = AndroidCompositionLocals_androidKt.b.b(androidComposeView.getContext());
            ProvidedValue b6 = InspectionTablesKt.a.b(set2);
            ProvidedValue b7 = AndroidCompositionLocals_androidKt.a.b(androidComposeView.getConfiguration());
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = SaveableStateRegistryKt.a;
            boolean h2 = gapComposer.h(androidComposeView);
            Object K3 = gapComposer.K();
            if (h2 || K3 == composer$Companion$Empty$1) {
                K3 = new m0(androidComposeView, 3);
                gapComposer.g0(K3);
            }
            ProvidedValue c2 = staticProvidableCompositionLocal2.c((Function1) K3);
            ProvidedValue b8 = AndroidCompositionLocals_androidKt.f.b(androidComposeView.getView());
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = CompositionLocalsKt.x;
            boolean h3 = gapComposer.h(androidComposeView);
            Object K4 = gapComposer.K();
            if (h3 || K4 == composer$Companion$Empty$1) {
                K4 = new m0(androidComposeView, 4);
                gapComposer.g0(K4);
            }
            CompositionLocalKt.b(new ProvidedValue[]{b, b2, b3, b4, c, b5, b6, b7, c2, b8, dynamicProvidableCompositionLocal.c((Function1) K4), CompositionLocalsKt.t.b(androidComposeView.getViewConfiguration()), HostDefaultProviderKt.a.b(viewTreeHostDefaultProvider)}, ComposableLambdaKt.b(1317454175, new i6(androidComposeView, this, composableLambdaImpl), gapComposer), gapComposer, 56);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new i6(this, androidComposeView, composableLambdaImpl, i);
        }
    }

    public final void b() {
        int i = this.v - 1;
        this.v = i;
        if (i < 0) {
            Log.e("ComposeViewContext", "View count has dropped below 0");
            this.v = 0;
        }
        if (this.v == 0) {
            View view = this.a;
            Context context = view.getContext();
            ComposeViewContext$callback$1 composeViewContext$callback$1 = this.x;
            context.unregisterComponentCallbacks(composeViewContext$callback$1);
            this.t.getClass();
            view.getViewTreeObserver().removeOnWindowFocusChangeListener(composeViewContext$callback$1);
        }
    }

    public final CompositionContext c() {
        g();
        CompositionContext compositionContext = this.c;
        compositionContext.getClass();
        return compositionContext;
    }

    public final LifecycleOwner d() {
        g();
        LifecycleOwner lifecycleOwner = this.d;
        lifecycleOwner.getClass();
        return lifecycleOwner;
    }

    public final void e() {
        int i = this.v + 1;
        this.v = i;
        if (i == 1) {
            View view = this.a;
            Context context = view.getContext();
            ComposeViewContext$callback$1 composeViewContext$callback$1 = this.x;
            context.registerComponentCallbacks(composeViewContext$callback$1);
            f(view.getResources().getConfiguration());
            boolean hasWindowFocus = view.hasWindowFocus();
            ((SnapshotMutableStateImpl) this.t.a).setValue(Boolean.valueOf(hasWindowFocus));
            view.getViewTreeObserver().addOnWindowFocusChangeListener(composeViewContext$callback$1);
        }
    }

    public final void f(Configuration configuration) {
        int updateFrom = this.i.updateFrom(configuration);
        if (updateFrom != 0) {
            Iterator it = this.g.a.entrySet().iterator();
            while (it.hasNext()) {
                ImageVectorCache.ImageVectorEntry imageVectorEntry = (ImageVectorCache.ImageVectorEntry) ((WeakReference) ((Map.Entry) it.next()).getValue()).get();
                if (imageVectorEntry == null || Configuration.needNewResources(updateFrom, imageVectorEntry.b)) {
                    it.remove();
                }
            }
            this.j.setValue(new Configuration(configuration));
            ResourceIdCache resourceIdCache = this.h;
            synchronized (resourceIdCache) {
                resourceIdCache.a.c();
            }
            if ((268435456 & updateFrom) != 0) {
                this.p.setValue(FontFamilyResolver_androidKt.a(this.a.getContext()));
            }
            if ((805248384 & updateFrom) != 0) {
                this.t.getClass();
            }
        }
    }

    public final void g() {
        if (!this.b) {
            this.b = true;
            CompositionContext compositionContext = this.c;
            View view = this.a;
            if (compositionContext == null) {
                CompositionContext a = WindowRecomposer_androidKt.a(view);
                if (a == null) {
                    Object parent = view.getParent();
                    while (a == null && (parent instanceof View)) {
                        View view2 = (View) parent;
                        a = WindowRecomposer_androidKt.a(view2);
                        parent = ViewTree.a(view2);
                    }
                }
                if (a == null) {
                    a = WindowRecomposer_androidKt.b(view);
                }
                this.c = a;
            }
            if (this.d == null) {
                LifecycleOwner a2 = ViewTreeLifecycleOwner.a(view);
                if (a2 != null) {
                    this.d = a2;
                } else {
                    u2.l("Composed into a View which doesn't propagate ViewTreeLifecycleOwner!");
                    return;
                }
            }
            if (this.e == null) {
                SavedStateRegistryOwner a3 = ViewTreeSavedStateRegistryOwner.a(view);
                if (a3 != null) {
                    this.e = a3;
                } else {
                    u2.l("Composed into a View which doesn't propagate ViewTreeSavedStateRegistryOwner!");
                    return;
                }
            }
            if (this.f == null) {
                this.f = ViewTreeViewModelStoreOwner.a(view);
            }
        }
    }
}
