package net.blip.android.ui.gallery;

import android.content.Context;
import android.net.Uri;
import android.widget.FrameLayout;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material.RippleKt;
import androidx.compose.material.SliderColors;
import androidx.compose.material.SliderDefaults;
import androidx.compose.material.SliderKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.viewinterop.AndroidView_androidKt;
import androidx.media3.common.BasePlayer;
import androidx.media3.common.MediaItem;
import androidx.media3.datasource.DefaultDataSource;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import androidx.media3.ui.PlayerView;
import coil3.SingletonImageLoader;
import coil3.compose.AsyncImageKt;
import coil3.compose.AsyncImageModelEqualityDelegate;
import coil3.compose.AsyncImagePainter;
import coil3.compose.LocalAsyncImageModelEqualityDelegateKt;
import coil3.compose.internal.AsyncImageState;
import defpackage.a0;
import defpackage.b;
import defpackage.c2;
import defpackage.e6;
import defpackage.n1;
import defpackage.o1;
import defpackage.q;
import defpackage.s2;
import java.util.Arrays;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.util.SystemBarsMetricsKt;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class GalleryVideoPlayerKt {
    public static final void a(Modifier modifier, Uri uri, boolean z, Composer composer, int i) {
        boolean z2;
        Modifier modifier2;
        boolean z3;
        float f;
        int i2;
        int i3;
        uri.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(728374414);
        int i4 = i | 6;
        if ((i & 48) == 0) {
            if (gapComposer.h(uri)) {
                i3 = 32;
            } else {
                i3 = 16;
            }
            i4 |= i3;
        }
        if ((i & 384) == 0) {
            if (gapComposer.g(z)) {
                i2 = 256;
            } else {
                i2 = 128;
            }
            i4 |= i2;
        }
        if ((i4 & 147) != 146) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer.N(i4 & 1, z2)) {
            CompositionLocal compositionLocal = AndroidCompositionLocals_androidKt.b;
            Context context = (Context) gapComposer.j(compositionLocal);
            Object K = gapComposer.K();
            Object obj = Composer.Companion.a;
            if (K == obj) {
                K = SnapshotStateKt.g(Boolean.FALSE);
                gapComposer.g0(K);
            }
            MutableState mutableState = (MutableState) K;
            Object K2 = gapComposer.K();
            if (K2 == obj) {
                K2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposer.g0(K2);
            }
            final MutableState mutableState2 = (MutableState) K2;
            Object K3 = gapComposer.K();
            Object obj2 = K3;
            if (K3 == obj) {
                final ExoPlayer a = new ExoPlayer.Builder(context).a();
                ProgressiveMediaSource.Factory factory = new ProgressiveMediaSource.Factory(new DefaultDataSource.Factory(context));
                MediaItem.Builder builder = new MediaItem.Builder();
                builder.b = uri;
                MediaItem a2 = builder.a();
                a2.b.getClass();
                factory.c.getClass();
                a2.b.getClass();
                a2.b.getClass();
                a.b(new ProgressiveMediaSource(a2, factory.a, factory.b, factory.d, factory.e, factory.f));
                a.o();
                a.d();
                a.E(0);
                a.s();
                a.p(SeekParameters.c);
                a.M(new AnalyticsListener() { // from class: net.blip.android.ui.gallery.GalleryVideoPlayerKt$GalleryVideoPlayer$player$1$1
                    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
                    public final void j(AnalyticsListener.EventTime eventTime, Object obj3) {
                        obj3.getClass();
                        mutableState2.setValue(Boolean.TRUE);
                    }

                    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
                    public final void n(AnalyticsListener.EventTime eventTime, int i5) {
                        if (i5 == 4) {
                            ((BasePlayer) ExoPlayer.this).Z(5, 0L);
                        }
                    }
                });
                gapComposer.g0(a);
                obj2 = a;
            }
            final ExoPlayer exoPlayer = (ExoPlayer) obj2;
            Boolean valueOf = Boolean.valueOf(z);
            Boolean bool = (Boolean) mutableState.getValue();
            bool.getClass();
            boolean h = gapComposer.h(exoPlayer);
            if ((i4 & 896) == 256) {
                z3 = true;
            } else {
                z3 = false;
            }
            boolean z4 = z3 | h;
            Object K4 = gapComposer.K();
            if (z4 || K4 == obj) {
                K4 = new GalleryVideoPlayerKt$GalleryVideoPlayer$1$1(exoPlayer, z, mutableState, null);
                gapComposer.g0(K4);
            }
            EffectsKt.f(valueOf, bool, (Function2) K4, gapComposer);
            boolean h2 = gapComposer.h(exoPlayer);
            Object K5 = gapComposer.K();
            if (h2 || K5 == obj) {
                final int i5 = 0;
                K5 = new Function1() { // from class: w8
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj3) {
                        int i6 = i5;
                        final ExoPlayer exoPlayer2 = exoPlayer;
                        switch (i6) {
                            case 0:
                                ((DisposableEffectScope) obj3).getClass();
                                return new DisposableEffectResult() { // from class: net.blip.android.ui.gallery.GalleryVideoPlayerKt$GalleryVideoPlayer$lambda$8$0$$inlined$onDispose$1
                                    @Override // androidx.compose.runtime.DisposableEffectResult
                                    public final void a() {
                                        ExoPlayer.this.a();
                                    }
                                };
                            default:
                                Context context2 = (Context) obj3;
                                context2.getClass();
                                PlayerView playerView = new PlayerView(context2);
                                playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                playerView.setUseController(false);
                                playerView.setPlayer(exoPlayer2);
                                return playerView;
                        }
                    }
                };
                gapComposer.g0(K5);
            }
            EffectsKt.c(Unit.a, (Function1) K5, gapComposer);
            if (((Boolean) mutableState2.getValue()).booleanValue()) {
                f = 0.0f;
            } else {
                f = 1.0f;
            }
            State b = AnimateAsStateKt.b(f, null, gapComposer, 3072, 22);
            Object K6 = gapComposer.K();
            if (K6 == obj) {
                K6 = InteractionSourceKt.a();
                gapComposer.g0(K6);
            }
            MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) K6;
            IndicationNodeFactory a3 = RippleKt.a(7, 0L, false);
            Object K7 = gapComposer.K();
            if (K7 == obj) {
                K7 = new o1(mutableState, 8);
                gapComposer.g0(K7);
            }
            Modifier.Companion companion = Modifier.Companion.b;
            Modifier a4 = ClickableKt.a(companion, mutableInteractionSource, a3, false, null, (Function0) K7, 28);
            BiasAlignment biasAlignment = Alignment.Companion.e;
            MeasurePolicy d = BoxKt.d(biasAlignment, false);
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c = ComposedModifierKt.c(gapComposer, a4);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            boolean z5 = gapComposer.S;
            Function0 function0 = LayoutNode.b0;
            if (z5) {
                gapComposer.k(function0);
            } else {
                gapComposer.j0();
            }
            e6 e6Var = ComposeUiNode.Companion.d;
            Updater.c(gapComposer, d, e6Var);
            e6 e6Var2 = ComposeUiNode.Companion.c;
            Updater.c(gapComposer, l, e6Var2);
            Integer valueOf2 = Integer.valueOf(hashCode);
            e6 e6Var3 = ComposeUiNode.Companion.e;
            Updater.c(gapComposer, valueOf2, e6Var3);
            Updater.b(gapComposer);
            e6 e6Var4 = ComposeUiNode.Companion.b;
            Updater.c(gapComposer, c, e6Var4);
            boolean h3 = gapComposer.h(exoPlayer);
            Object K8 = gapComposer.K();
            if (h3 || K8 == obj) {
                final int i6 = 1;
                K8 = new Function1() { // from class: w8
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj3) {
                        int i62 = i6;
                        final ExoPlayer exoPlayer2 = exoPlayer;
                        switch (i62) {
                            case 0:
                                ((DisposableEffectScope) obj3).getClass();
                                return new DisposableEffectResult() { // from class: net.blip.android.ui.gallery.GalleryVideoPlayerKt$GalleryVideoPlayer$lambda$8$0$$inlined$onDispose$1
                                    @Override // androidx.compose.runtime.DisposableEffectResult
                                    public final void a() {
                                        ExoPlayer.this.a();
                                    }
                                };
                            default:
                                Context context2 = (Context) obj3;
                                context2.getClass();
                                PlayerView playerView = new PlayerView(context2);
                                playerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                playerView.setUseController(false);
                                playerView.setPlayer(exoPlayer2);
                                return playerView;
                        }
                    }
                };
                gapComposer.g0(K8);
            }
            AndroidView_androidKt.b((Function1) K8, null, null, gapComposer, 0);
            b(SizeKt.e(PaddingKt.f(SystemBarsMetricsKt.b(gapComposer, BoxScopeInstance.a.d(SizeKt.d(companion, 1.0f), Alignment.Companion.h)), 24.0f, 0.0f, 2), 56.0f), exoPlayer, gapComposer, 0);
            Modifier b2 = BackgroundKt.b(AlphaKt.a(SizeKt.c(companion, 1.0f), ((Number) b.getValue()).floatValue()), ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).m, RectangleShapeKt.a);
            MeasurePolicy d2 = BoxKt.d(Alignment.Companion.a, false);
            int hashCode2 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l2 = gapComposer.l();
            Modifier c2 = ComposedModifierKt.c(gapComposer, b2);
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(function0);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, d2, e6Var);
            Updater.c(gapComposer, l2, e6Var2);
            q.s(hashCode2, gapComposer, e6Var3, gapComposer);
            Updater.c(gapComposer, c2, e6Var4);
            AsyncImageKt.a(new AsyncImageState(uri, (AsyncImageModelEqualityDelegate) gapComposer.j(LocalAsyncImageModelEqualityDelegateKt.a), SingletonImageLoader.a((Context) gapComposer.j(compositionLocal))), null, SizeKt.c(companion, 1.0f), AsyncImagePainter.E, null, biasAlignment, ContentScale.Companion.c, gapComposer, 1573296, 0);
            gapComposer.p(true);
            gapComposer.p(true);
            modifier2 = companion;
        } else {
            gapComposer.Q();
            modifier2 = modifier;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new c2(modifier2, uri, z, i, 2);
        }
    }

    public static final void b(Modifier modifier, ExoPlayer exoPlayer, Composer composer, int i) {
        int i2;
        int i3;
        boolean z;
        float floatValue;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        MutableState mutableState;
        MutableState mutableState2;
        boolean z2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-91933971);
        if (gapComposer.f(modifier)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i4 = i2 | i;
        if (gapComposer.h(exoPlayer)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i5 = i4 | i3;
        if ((i5 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i5 & 1, z)) {
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$12 = Composer.Companion.a;
            if (K == composer$Companion$Empty$12) {
                K = SnapshotStateKt.g(Float.valueOf(0.0f));
                gapComposer.g0(K);
            }
            MutableState mutableState3 = (MutableState) K;
            Object K2 = gapComposer.K();
            if (K2 == composer$Companion$Empty$12) {
                K2 = SnapshotStateKt.g(null);
                gapComposer.g0(K2);
            }
            MutableState mutableState4 = (MutableState) K2;
            boolean h = gapComposer.h(exoPlayer);
            Object K3 = gapComposer.K();
            if (h || K3 == composer$Companion$Empty$12) {
                K3 = new b(14, exoPlayer, mutableState3);
                gapComposer.g0(K3);
            }
            EffectsKt.c(exoPlayer, (Function1) K3, gapComposer);
            Object K4 = gapComposer.K();
            if (K4 == composer$Companion$Empty$12) {
                K4 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposer.g0(K4);
            }
            MutableState mutableState5 = (MutableState) K4;
            Float f = (Float) mutableState4.getValue();
            if (f != null) {
                floatValue = f.floatValue();
            } else {
                floatValue = ((Number) mutableState3.getValue()).floatValue();
            }
            float f2 = floatValue;
            float floatValue2 = RangesKt.g(0.0f, Math.max((float) exoPlayer.getDuration(), 0.0f)).b().floatValue();
            RowMeasurePolicy a = RowKt.a(Arrangement.e(16.0f), Alignment.Companion.k, gapComposer, 54);
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c = ComposedModifierKt.c(gapComposer, modifier);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(LayoutNode.b0);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, a, ComposeUiNode.Companion.d);
            Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
            Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
            Updater.b(gapComposer);
            Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
            String c2 = c(f2);
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidTextStylesKt.a;
            TextStyle textStyle = ((AndroidTextStyles) gapComposer.j(dynamicProvidableCompositionLocal)).b;
            long j = Color.d;
            PlatformTextKt.c(c2, null, TextStyle.a(textStyle, j, TextUnitKt.d(16), null, 0L, 0L, null, 0, 16777212), 0, false, 0, 0, null, gapComposer, 0, 506);
            Modifier a2 = RowScopeInstance.a.a();
            ClosedFloatingPointRange g = RangesKt.g(0.0f, Math.max((float) exoPlayer.getDuration(), 0.0f));
            SliderColors a3 = SliderDefaults.a(j, Color.b(j, 0.85f), Color.b(j, 0.35f), gapComposer, 3462, 1010);
            boolean h2 = gapComposer.h(exoPlayer);
            Object K5 = gapComposer.K();
            if (!h2 && K5 != composer$Companion$Empty$12) {
                composer$Companion$Empty$1 = composer$Companion$Empty$12;
                mutableState = mutableState5;
                mutableState2 = mutableState4;
                z2 = true;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$12;
                mutableState = mutableState5;
                mutableState2 = mutableState4;
                z2 = true;
                s2 s2Var = new s2(exoPlayer, mutableState2, mutableState, mutableState3, 3);
                gapComposer.g0(s2Var);
                K5 = s2Var;
            }
            Function1 function1 = (Function1) K5;
            boolean h3 = gapComposer.h(exoPlayer);
            Object K6 = gapComposer.K();
            if (h3 || K6 == composer$Companion$Empty$1) {
                K6 = new n1(exoPlayer, mutableState2, mutableState);
                gapComposer.g0(K6);
            }
            SliderKt.b(f2, function1, a2, false, g, (Function0) K6, a3, gapComposer, 0);
            PlatformTextKt.c(c(floatValue2), null, TextStyle.a(((AndroidTextStyles) gapComposer.j(dynamicProvidableCompositionLocal)).b, j, TextUnitKt.d(16), null, 0L, 0L, null, 0, 16777212), 0, false, 0, 0, null, gapComposer, 0, 506);
            gapComposer = gapComposer;
            gapComposer.p(z2);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new a0(i, 12, modifier, exoPlayer);
        }
    }

    public static final String c(float f) {
        return String.format("%02.0f:%02.0f", Arrays.copyOf(new Object[]{Float.valueOf((float) Math.floor(r3 / 60.0f)), Float.valueOf((float) Math.floor(f / 1000.0f))}, 2));
    }
}
