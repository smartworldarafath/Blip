package net.blip.android.ui.gallery;

import android.util.Size;
import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.gestures.TransformGestureDetectorKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.input.pointer.util.VelocityTracker;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.compose.AsyncImagePainter;
import defpackage.p2;
import defpackage.u2;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import net.blip.android.ui.gallery.ZoomableImageKt;
import net.blip.shared.GeometryKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ZoomableImageKt {
    public static final void a(Modifier modifier, final AsyncImagePainter asyncImagePainter, float f, boolean z, final Function0 function0, Composer composer, final int i) {
        int i2;
        int i3;
        boolean z2;
        Modifier modifier2;
        final float f2;
        final boolean z3;
        long j;
        long i4;
        Size size;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1787377611);
        if (gapComposer.f(asyncImagePainter)) {
            i2 = 32;
        } else {
            i2 = 16;
        }
        int i5 = i | i2 | 3456;
        if (gapComposer.h(function0)) {
            i3 = 16384;
        } else {
            i3 = 8192;
        }
        int i6 = i5 | i3;
        boolean z4 = false;
        if ((i6 & 9363) != 9362) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer.N(i6 & 1, z2)) {
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (K == composer$Companion$Empty$1) {
                K = EffectsKt.h(gapComposer);
                gapComposer.g0(K);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) K;
            Object K2 = gapComposer.K();
            if (K2 == composer$Companion$Empty$1) {
                K2 = AnimatableKt.a(1.0f);
                gapComposer.g0(K2);
            }
            final Animatable animatable = (Animatable) K2;
            Object K3 = gapComposer.K();
            if (K3 == composer$Companion$Empty$1) {
                K3 = AnimatableKt.a(0.0f);
                gapComposer.g0(K3);
            }
            final Animatable animatable2 = (Animatable) K3;
            Object K4 = gapComposer.K();
            if (K4 == composer$Companion$Empty$1) {
                K4 = AnimatableKt.a(0.0f);
                gapComposer.g0(K4);
            }
            final Animatable animatable3 = (Animatable) K4;
            if (androidx.compose.ui.geometry.Size.a(asyncImagePainter.i(), 9205357640488583168L)) {
                j = 4294967295L;
                i4 = (Float.floatToRawIntBits(1.0f) << 32) | (Float.floatToRawIntBits(1.0f) & 4294967295L);
            } else {
                j = 4294967295L;
                i4 = asyncImagePainter.i();
            }
            long a = GeometryKt.a(i4);
            final Size size2 = new Size((int) (a >> 32), (int) (a & j));
            Object K5 = gapComposer.K();
            if (K5 == composer$Companion$Empty$1) {
                K5 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposer.g0(K5);
            }
            final MutableState mutableState = (MutableState) K5;
            Boolean bool = (Boolean) mutableState.getValue();
            bool.getClass();
            if ((57344 & i6) == 16384) {
                z4 = true;
            }
            Object K6 = gapComposer.K();
            if (z4 || K6 == composer$Companion$Empty$1) {
                K6 = new ZoomableImageKt$ZoomableImage$2$1(function0, mutableState, null);
                gapComposer.g0(K6);
            }
            EffectsKt.e(gapComposer, bool, (Function2) K6);
            boolean h = gapComposer.h(size2) | gapComposer.h(animatable2) | gapComposer.h(animatable3) | gapComposer.h(animatable) | gapComposer.h(coroutineScope);
            Object K7 = gapComposer.K();
            final float f3 = 8.0f;
            if (!h && K7 != composer$Companion$Empty$1) {
                size = size2;
            } else {
                K7 = new PointerInputEventHandler() { // from class: net.blip.android.ui.gallery.ZoomableImageKt$ZoomableImage$3$1

                    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                    @DebugMetadata(c = "net.blip.android.ui.gallery.ZoomableImageKt$ZoomableImage$3$1$1", f = "ZoomableImage.kt", l = {95}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
                    /* renamed from: net.blip.android.ui.gallery.ZoomableImageKt$ZoomableImage$3$1$1, reason: invalid class name */
                    /* loaded from: classes.dex */
                    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                        public final /* synthetic */ MutableState A;
                        public final /* synthetic */ DecayAnimationSpec B;
                        public VelocityTracker n;
                        public Ref$BooleanRef o;
                        public int p;
                        public /* synthetic */ Object q;
                        public final /* synthetic */ Size r;
                        public final /* synthetic */ long s;
                        public final /* synthetic */ PointerInputScope t;
                        public final /* synthetic */ Animatable u;
                        public final /* synthetic */ Animatable v;
                        public final /* synthetic */ Ref$LongRef w;
                        public final /* synthetic */ Animatable x;
                        public final /* synthetic */ float y;
                        public final /* synthetic */ CoroutineScope z;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                        @DebugMetadata(c = "net.blip.android.ui.gallery.ZoomableImageKt$ZoomableImage$3$1$1$1", f = "ZoomableImage.kt", l = {97}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
                        /* renamed from: net.blip.android.ui.gallery.ZoomableImageKt$ZoomableImage$3$1$1$1, reason: invalid class name and collision with other inner class name */
                        /* loaded from: classes.dex */
                        public final class C00121 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
                            public final /* synthetic */ VelocityTracker A;
                            public final /* synthetic */ MutableState B;
                            public int l;
                            public /* synthetic */ Object m;
                            public final /* synthetic */ Ref$BooleanRef n;
                            public final /* synthetic */ Ref$BooleanRef o;
                            public final /* synthetic */ Animatable p;
                            public final /* synthetic */ Animatable q;
                            public final /* synthetic */ Ref$LongRef r;
                            public final /* synthetic */ Ref$FloatRef s;
                            public final /* synthetic */ Ref$LongRef t;
                            public final /* synthetic */ Ref$BooleanRef u;
                            public final /* synthetic */ Animatable v;
                            public final /* synthetic */ float w;
                            public final /* synthetic */ Size x;
                            public final /* synthetic */ long y;
                            public final /* synthetic */ CoroutineScope z;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                            @DebugMetadata(c = "net.blip.android.ui.gallery.ZoomableImageKt$ZoomableImage$3$1$1$1$2", f = "ZoomableImage.kt", l = {174, 175, 176}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
                            /* renamed from: net.blip.android.ui.gallery.ZoomableImageKt$ZoomableImage$3$1$1$1$2, reason: invalid class name */
                            /* loaded from: classes.dex */
                            public final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                public int n;
                                public final /* synthetic */ Animatable o;
                                public final /* synthetic */ long p;
                                public final /* synthetic */ Animatable q;
                                public final /* synthetic */ Animatable r;
                                public final /* synthetic */ float s;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                public AnonymousClass2(Animatable animatable, long j, Animatable animatable2, Animatable animatable3, float f, Continuation continuation) {
                                    super(2, continuation);
                                    this.o = animatable;
                                    this.p = j;
                                    this.q = animatable2;
                                    this.r = animatable3;
                                    this.s = f;
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public final Object n(Object obj, Object obj2) {
                                    return ((AnonymousClass2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Continuation s(Object obj, Continuation continuation) {
                                    return new AnonymousClass2(this.o, this.p, this.q, this.r, this.s, continuation);
                                }

                                /* JADX WARN: Code restructure failed: missing block: B:14:0x0080, code lost:
                                
                                    if (r9.r.h(r10, r9) == r0) goto L20;
                                 */
                                /* JADX WARN: Code restructure failed: missing block: B:15:0x0082, code lost:
                                
                                    return r0;
                                 */
                                /* JADX WARN: Code restructure failed: missing block: B:18:0x006e, code lost:
                                
                                    if (r10.h(r1, r9) == r0) goto L20;
                                 */
                                /* JADX WARN: Code restructure failed: missing block: B:20:0x0048, code lost:
                                
                                    if (r10.h(r1, r9) == r0) goto L20;
                                 */
                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                /*
                                    Code decompiled incorrectly, please refer to instructions dump.
                                */
                                public final Object v(Object obj) {
                                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                    int i = this.n;
                                    long j = this.p;
                                    if (i != 0) {
                                        if (i != 1) {
                                            if (i != 2) {
                                                if (i == 3) {
                                                    ResultKt.b(obj);
                                                    return Unit.a;
                                                }
                                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                                return null;
                                            }
                                            ResultKt.b(obj);
                                            Float f = new Float(this.s);
                                            this.n = 3;
                                        } else {
                                            ResultKt.b(obj);
                                        }
                                    } else {
                                        ResultKt.b(obj);
                                        Animatable animatable = this.o;
                                        Float f2 = new Float(Float.intBitsToFloat((int) (j >> 32)) + ((Number) animatable.f()).floatValue());
                                        this.n = 1;
                                    }
                                    Animatable animatable2 = this.q;
                                    Float f3 = new Float(Float.intBitsToFloat((int) (j & 4294967295L)) + ((Number) animatable2.f()).floatValue());
                                    this.n = 2;
                                }
                            }

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            public C00121(Ref$BooleanRef ref$BooleanRef, Ref$BooleanRef ref$BooleanRef2, Animatable animatable, Animatable animatable2, Ref$LongRef ref$LongRef, Ref$FloatRef ref$FloatRef, Ref$LongRef ref$LongRef2, Ref$BooleanRef ref$BooleanRef3, Animatable animatable3, float f, Size size, long j, CoroutineScope coroutineScope, VelocityTracker velocityTracker, MutableState mutableState, Continuation continuation) {
                                super(2, continuation);
                                this.n = ref$BooleanRef;
                                this.o = ref$BooleanRef2;
                                this.p = animatable;
                                this.q = animatable2;
                                this.r = ref$LongRef;
                                this.s = ref$FloatRef;
                                this.t = ref$LongRef2;
                                this.u = ref$BooleanRef3;
                                this.v = animatable3;
                                this.w = f;
                                this.x = size;
                                this.y = j;
                                this.z = coroutineScope;
                                this.A = velocityTracker;
                                this.B = mutableState;
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object n(Object obj, Object obj2) {
                                return ((C00121) s((AwaitPointerEventScope) obj, (Continuation) obj2)).v(Unit.a);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation s(Object obj, Continuation continuation) {
                                C00121 c00121 = new C00121(this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B, continuation);
                                c00121.m = obj;
                                return c00121;
                            }

                            /* JADX WARN: Removed duplicated region for block: B:16:0x005e  */
                            /* JADX WARN: Removed duplicated region for block: B:19:0x0079  */
                            /* JADX WARN: Removed duplicated region for block: B:24:0x00d6  */
                            /* JADX WARN: Removed duplicated region for block: B:29:0x00ea  */
                            /* JADX WARN: Removed duplicated region for block: B:36:0x013d  */
                            /* JADX WARN: Removed duplicated region for block: B:44:0x0156  */
                            /* JADX WARN: Removed duplicated region for block: B:71:0x0029 A[RETURN] */
                            /* JADX WARN: Removed duplicated region for block: B:76:0x010d A[ADDED_TO_REGION] */
                            /* JADX WARN: Removed duplicated region for block: B:79:0x0125  */
                            /* JADX WARN: Removed duplicated region for block: B:7:0x0039  */
                            /* JADX WARN: Removed duplicated region for block: B:80:0x012d  */
                            /* JADX WARN: Removed duplicated region for block: B:84:0x00fb  */
                            /* JADX WARN: Removed duplicated region for block: B:91:0x0061  */
                            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x0027 -> B:5:0x002a). Please report as a decompilation issue!!! */
                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                            */
                            public final Object v(Object obj) {
                                Object q;
                                boolean z;
                                Ref$BooleanRef ref$BooleanRef;
                                long a;
                                List list;
                                long e;
                                float b;
                                float f;
                                Ref$LongRef ref$LongRef;
                                boolean z2;
                                Ref$BooleanRef ref$BooleanRef2;
                                Iterator it;
                                boolean z3;
                                Pair pair;
                                Pair pair2;
                                boolean z4;
                                AwaitPointerEventScope awaitPointerEventScope = (AwaitPointerEventScope) this.m;
                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                int i = this.l;
                                boolean z5 = true;
                                z5 = true;
                                if (i != 0) {
                                    if (i == 1) {
                                        ResultKt.b(obj);
                                        q = obj;
                                        PointerEvent pointerEvent = (PointerEvent) q;
                                        Ref$BooleanRef ref$BooleanRef3 = this.n;
                                        z = ref$BooleanRef3.j;
                                        ref$BooleanRef = this.o;
                                        Animatable animatable = this.q;
                                        Animatable animatable2 = this.p;
                                        if (z) {
                                            ref$BooleanRef3.j = false;
                                            if (!animatable2.g() && !animatable.g()) {
                                                z4 = false;
                                            } else {
                                                z4 = z5;
                                            }
                                            ref$BooleanRef.j = z4;
                                        }
                                        a = TransformGestureDetectorKt.a(pointerEvent, z5);
                                        list = pointerEvent.a;
                                        if (Offset.c(a, 9205357640488583168L)) {
                                            e = 0;
                                        } else {
                                            e = Offset.e(a, TransformGestureDetectorKt.a(pointerEvent, false));
                                        }
                                        b = TransformGestureDetectorKt.b(pointerEvent, z5);
                                        float b2 = TransformGestureDetectorKt.b(pointerEvent, false);
                                        if (b == 0.0f || b2 == 0.0f) {
                                            f = 1.0f;
                                        } else {
                                            f = b / b2;
                                        }
                                        ref$LongRef = this.r;
                                        long j = ref$LongRef.j;
                                        float abs = Math.abs(Float.intBitsToFloat((int) (e >> 32)));
                                        float abs2 = Math.abs(Float.intBitsToFloat((int) (e & 4294967295L)));
                                        ref$LongRef.j = Offset.f(j, (Float.floatToRawIntBits(abs2) & 4294967295L) | (Float.floatToRawIntBits(abs) << 32));
                                        Ref$FloatRef ref$FloatRef = this.s;
                                        ref$FloatRef.j = Math.abs(f - 1.0f) + ref$FloatRef.j;
                                        if (Offset.d(ref$LongRef.j) > 100.0f && ref$FloatRef.j <= 0.05f) {
                                            z2 = false;
                                        } else {
                                            z2 = true;
                                        }
                                        MutableState mutableState = this.B;
                                        ref$BooleanRef2 = this.u;
                                        if (list != null || !list.isEmpty()) {
                                            it = list.iterator();
                                            while (it.hasNext()) {
                                                if (!PointerEventKt.d((PointerInputChange) it.next())) {
                                                    break;
                                                }
                                            }
                                        }
                                        if (!ref$BooleanRef.j && !z2) {
                                            Ref$LongRef ref$LongRef2 = this.t;
                                            if (ref$LongRef2.j <= System.currentTimeMillis() - awaitPointerEventScope.getViewConfiguration().a()) {
                                                ref$LongRef2.j = 0L;
                                                z3 = true;
                                                ref$BooleanRef2.j = true;
                                            } else {
                                                z3 = true;
                                                ref$LongRef2.j = System.currentTimeMillis();
                                                mutableState.setValue(Boolean.TRUE);
                                            }
                                            if (!ref$BooleanRef2.j) {
                                                mutableState.setValue(Boolean.FALSE);
                                                Iterator it2 = list.iterator();
                                                while (it2.hasNext()) {
                                                    ((PointerInputChange) it2.next()).a();
                                                }
                                            } else {
                                                float c = RangesKt.c(((Number) this.v.f()).floatValue() * f, 1.0f, this.w);
                                                Size size = this.x;
                                                long b3 = (MathKt.b(size.getWidth() * c) << 32) | (MathKt.b(size.getHeight() * c) & 4294967295L);
                                                int i2 = (int) (b3 >> 32);
                                                long j2 = this.y;
                                                if (i2 < ((int) (j2 >> 32))) {
                                                    pair = new Pair(0, 0);
                                                } else {
                                                    int b4 = MathKt.b((r13 - i2) * 0.5f);
                                                    pair = new Pair(Integer.valueOf(b4), Integer.valueOf(-b4));
                                                }
                                                int intValue = ((Number) pair.j).intValue();
                                                int intValue2 = ((Number) pair.k).intValue();
                                                if (((int) (b3 & 4294967295L)) < ((int) (j2 & 4294967295L))) {
                                                    pair2 = new Pair(0, 0);
                                                } else {
                                                    int b5 = MathKt.b((r4 - r3) * 0.5f);
                                                    pair2 = new Pair(Integer.valueOf(b5), Integer.valueOf(-b5));
                                                }
                                                int intValue3 = ((Number) pair2.j).intValue();
                                                int intValue4 = ((Number) pair2.k).intValue();
                                                animatable2.j(new Float(intValue), new Float(intValue2));
                                                animatable.j(new Float(intValue3), new Float(intValue4));
                                                BuildersKt.c(this.z, null, null, new AnonymousClass2(this.p, e, this.q, this.v, c, null), 3);
                                                float floatValue = ((Number) animatable2.f()).floatValue();
                                                Float f2 = animatable2.f;
                                                f2.getClass();
                                                if (floatValue > f2.floatValue()) {
                                                    float floatValue2 = ((Number) animatable2.f()).floatValue();
                                                    Float f3 = animatable2.g;
                                                    f3.getClass();
                                                    if (floatValue2 < f3.floatValue()) {
                                                        Iterator it3 = list.iterator();
                                                        while (it3.hasNext()) {
                                                            ((PointerInputChange) it3.next()).a();
                                                        }
                                                    }
                                                }
                                                if (list == null || !list.isEmpty()) {
                                                    Iterator it4 = list.iterator();
                                                    while (it4.hasNext()) {
                                                        if (((PointerInputChange) it4.next()).d) {
                                                            long j3 = ((PointerInputChange) list.get(0)).b;
                                                            float floatValue3 = ((Number) animatable2.f()).floatValue();
                                                            float floatValue4 = ((Number) animatable.f()).floatValue();
                                                            long floatToRawIntBits = Float.floatToRawIntBits(floatValue3);
                                                            this.A.a.a(j3, (Float.floatToRawIntBits(floatValue4) & 4294967295L) | (floatToRawIntBits << 32));
                                                            z5 = z3;
                                                            this.m = awaitPointerEventScope;
                                                            this.l = z5 ? 1 : 0;
                                                            q = ((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) awaitPointerEventScope).q(PointerEventPass.k, this);
                                                            if (q == coroutineSingletons) {
                                                                return coroutineSingletons;
                                                            }
                                                            PointerEvent pointerEvent2 = (PointerEvent) q;
                                                            Ref$BooleanRef ref$BooleanRef32 = this.n;
                                                            z = ref$BooleanRef32.j;
                                                            ref$BooleanRef = this.o;
                                                            Animatable animatable3 = this.q;
                                                            Animatable animatable22 = this.p;
                                                            if (z) {
                                                            }
                                                            a = TransformGestureDetectorKt.a(pointerEvent2, z5);
                                                            list = pointerEvent2.a;
                                                            if (Offset.c(a, 9205357640488583168L)) {
                                                            }
                                                            b = TransformGestureDetectorKt.b(pointerEvent2, z5);
                                                            float b22 = TransformGestureDetectorKt.b(pointerEvent2, false);
                                                            if (b == 0.0f) {
                                                                f = b / b22;
                                                                ref$LongRef = this.r;
                                                                long j4 = ref$LongRef.j;
                                                                float abs3 = Math.abs(Float.intBitsToFloat((int) (e >> 32)));
                                                                float abs22 = Math.abs(Float.intBitsToFloat((int) (e & 4294967295L)));
                                                                ref$LongRef.j = Offset.f(j4, (Float.floatToRawIntBits(abs22) & 4294967295L) | (Float.floatToRawIntBits(abs3) << 32));
                                                                Ref$FloatRef ref$FloatRef2 = this.s;
                                                                ref$FloatRef2.j = Math.abs(f - 1.0f) + ref$FloatRef2.j;
                                                                if (Offset.d(ref$LongRef.j) > 100.0f) {
                                                                }
                                                                z2 = true;
                                                                MutableState mutableState2 = this.B;
                                                                ref$BooleanRef2 = this.u;
                                                                if (list != null) {
                                                                }
                                                                it = list.iterator();
                                                                while (it.hasNext()) {
                                                                }
                                                                if (!ref$BooleanRef.j) {
                                                                    Ref$LongRef ref$LongRef22 = this.t;
                                                                    if (ref$LongRef22.j <= System.currentTimeMillis() - awaitPointerEventScope.getViewConfiguration().a()) {
                                                                    }
                                                                    if (!ref$BooleanRef2.j) {
                                                                    }
                                                                }
                                                            }
                                                            f = 1.0f;
                                                            ref$LongRef = this.r;
                                                            long j42 = ref$LongRef.j;
                                                            float abs32 = Math.abs(Float.intBitsToFloat((int) (e >> 32)));
                                                            float abs222 = Math.abs(Float.intBitsToFloat((int) (e & 4294967295L)));
                                                            ref$LongRef.j = Offset.f(j42, (Float.floatToRawIntBits(abs222) & 4294967295L) | (Float.floatToRawIntBits(abs32) << 32));
                                                            Ref$FloatRef ref$FloatRef22 = this.s;
                                                            ref$FloatRef22.j = Math.abs(f - 1.0f) + ref$FloatRef22.j;
                                                            if (Offset.d(ref$LongRef.j) > 100.0f) {
                                                            }
                                                            z2 = true;
                                                            MutableState mutableState22 = this.B;
                                                            ref$BooleanRef2 = this.u;
                                                            if (list != null) {
                                                            }
                                                            it = list.iterator();
                                                            while (it.hasNext()) {
                                                            }
                                                            if (!ref$BooleanRef.j) {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            return Unit.a;
                                        }
                                        z3 = true;
                                        if (!ref$BooleanRef2.j) {
                                        }
                                        return Unit.a;
                                    }
                                    u2.l("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                                ResultKt.b(obj);
                                this.m = awaitPointerEventScope;
                                this.l = z5 ? 1 : 0;
                                q = ((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) awaitPointerEventScope).q(PointerEventPass.k, this);
                                if (q == coroutineSingletons) {
                                }
                                PointerEvent pointerEvent22 = (PointerEvent) q;
                                Ref$BooleanRef ref$BooleanRef322 = this.n;
                                z = ref$BooleanRef322.j;
                                ref$BooleanRef = this.o;
                                Animatable animatable32 = this.q;
                                Animatable animatable222 = this.p;
                                if (z) {
                                }
                                a = TransformGestureDetectorKt.a(pointerEvent22, z5);
                                list = pointerEvent22.a;
                                if (Offset.c(a, 9205357640488583168L)) {
                                }
                                b = TransformGestureDetectorKt.b(pointerEvent22, z5);
                                float b222 = TransformGestureDetectorKt.b(pointerEvent22, false);
                                if (b == 0.0f) {
                                }
                                f = 1.0f;
                                ref$LongRef = this.r;
                                long j422 = ref$LongRef.j;
                                float abs322 = Math.abs(Float.intBitsToFloat((int) (e >> 32)));
                                float abs2222 = Math.abs(Float.intBitsToFloat((int) (e & 4294967295L)));
                                ref$LongRef.j = Offset.f(j422, (Float.floatToRawIntBits(abs2222) & 4294967295L) | (Float.floatToRawIntBits(abs322) << 32));
                                Ref$FloatRef ref$FloatRef222 = this.s;
                                ref$FloatRef222.j = Math.abs(f - 1.0f) + ref$FloatRef222.j;
                                if (Offset.d(ref$LongRef.j) > 100.0f) {
                                }
                                z2 = true;
                                MutableState mutableState222 = this.B;
                                ref$BooleanRef2 = this.u;
                                if (list != null) {
                                }
                                it = list.iterator();
                                while (it.hasNext()) {
                                }
                                if (!ref$BooleanRef.j) {
                                }
                                z3 = true;
                                if (!ref$BooleanRef2.j) {
                                }
                                return Unit.a;
                            }
                        }

                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                        @DebugMetadata(c = "net.blip.android.ui.gallery.ZoomableImageKt$ZoomableImage$3$1$1$2", f = "ZoomableImage.kt", l = {217}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
                        /* renamed from: net.blip.android.ui.gallery.ZoomableImageKt$ZoomableImage$3$1$1$2, reason: invalid class name */
                        /* loaded from: classes.dex */
                        public final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                            public int n;
                            public final /* synthetic */ Animatable o;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            public AnonymousClass2(Animatable animatable, Continuation continuation) {
                                super(2, continuation);
                                this.o = animatable;
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object n(Object obj, Object obj2) {
                                return ((AnonymousClass2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation s(Object obj, Continuation continuation) {
                                return new AnonymousClass2(this.o, continuation);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object v(Object obj) {
                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                int i = this.n;
                                if (i != 0) {
                                    if (i == 1) {
                                        ResultKt.b(obj);
                                    } else {
                                        u2.l("call to 'resume' before 'invoke' with coroutine");
                                        return null;
                                    }
                                } else {
                                    ResultKt.b(obj);
                                    Float f = new Float(0.0f);
                                    this.n = 1;
                                    if (Animatable.d(this.o, f, null, null, this, 14) == coroutineSingletons) {
                                        return coroutineSingletons;
                                    }
                                }
                                return Unit.a;
                            }
                        }

                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                        @DebugMetadata(c = "net.blip.android.ui.gallery.ZoomableImageKt$ZoomableImage$3$1$1$3", f = "ZoomableImage.kt", l = {220}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
                        /* renamed from: net.blip.android.ui.gallery.ZoomableImageKt$ZoomableImage$3$1$1$3, reason: invalid class name */
                        /* loaded from: classes.dex */
                        public final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                            public int n;
                            public final /* synthetic */ Animatable o;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            public AnonymousClass3(Animatable animatable, Continuation continuation) {
                                super(2, continuation);
                                this.o = animatable;
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object n(Object obj, Object obj2) {
                                return ((AnonymousClass3) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation s(Object obj, Continuation continuation) {
                                return new AnonymousClass3(this.o, continuation);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object v(Object obj) {
                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                int i = this.n;
                                if (i != 0) {
                                    if (i == 1) {
                                        ResultKt.b(obj);
                                    } else {
                                        u2.l("call to 'resume' before 'invoke' with coroutine");
                                        return null;
                                    }
                                } else {
                                    ResultKt.b(obj);
                                    Float f = new Float(0.0f);
                                    this.n = 1;
                                    if (Animatable.d(this.o, f, null, null, this, 14) == coroutineSingletons) {
                                        return coroutineSingletons;
                                    }
                                }
                                return Unit.a;
                            }
                        }

                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                        @DebugMetadata(c = "net.blip.android.ui.gallery.ZoomableImageKt$ZoomableImage$3$1$1$4", f = "ZoomableImage.kt", l = {223}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
                        /* renamed from: net.blip.android.ui.gallery.ZoomableImageKt$ZoomableImage$3$1$1$4, reason: invalid class name */
                        /* loaded from: classes.dex */
                        public final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                            public int n;
                            public final /* synthetic */ Animatable o;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            public AnonymousClass4(Animatable animatable, Continuation continuation) {
                                super(2, continuation);
                                this.o = animatable;
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object n(Object obj, Object obj2) {
                                return ((AnonymousClass4) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation s(Object obj, Continuation continuation) {
                                return new AnonymousClass4(this.o, continuation);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object v(Object obj) {
                                float f;
                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                int i = this.n;
                                if (i != 0) {
                                    if (i == 1) {
                                        ResultKt.b(obj);
                                    } else {
                                        u2.l("call to 'resume' before 'invoke' with coroutine");
                                        return null;
                                    }
                                } else {
                                    ResultKt.b(obj);
                                    Animatable animatable = this.o;
                                    if (((Number) ((SnapshotMutableStateImpl) animatable.e).getValue()).floatValue() < 2.0f) {
                                        f = 3.0f;
                                    } else {
                                        f = 1.0f;
                                    }
                                    Float f2 = new Float(f);
                                    this.n = 1;
                                    if (Animatable.d(animatable, f2, null, null, this, 14) == coroutineSingletons) {
                                        return coroutineSingletons;
                                    }
                                }
                                return Unit.a;
                            }
                        }

                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                        @DebugMetadata(c = "net.blip.android.ui.gallery.ZoomableImageKt$ZoomableImage$3$1$1$5", f = "ZoomableImage.kt", l = {230}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
                        /* renamed from: net.blip.android.ui.gallery.ZoomableImageKt$ZoomableImage$3$1$1$5, reason: invalid class name */
                        /* loaded from: classes.dex */
                        public final class AnonymousClass5 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                            public int n;
                            public final /* synthetic */ Animatable o;
                            public final /* synthetic */ long p;
                            public final /* synthetic */ DecayAnimationSpec q;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            public AnonymousClass5(Animatable animatable, long j, DecayAnimationSpec decayAnimationSpec, Continuation continuation) {
                                super(2, continuation);
                                this.o = animatable;
                                this.p = j;
                                this.q = decayAnimationSpec;
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object n(Object obj, Object obj2) {
                                return ((AnonymousClass5) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation s(Object obj, Continuation continuation) {
                                return new AnonymousClass5(this.o, this.p, this.q, continuation);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object v(Object obj) {
                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                int i = this.n;
                                if (i != 0) {
                                    if (i == 1) {
                                        ResultKt.b(obj);
                                    } else {
                                        u2.l("call to 'resume' before 'invoke' with coroutine");
                                        return null;
                                    }
                                } else {
                                    ResultKt.b(obj);
                                    Float f = new Float(Velocity.b(this.p));
                                    this.n = 1;
                                    if (Animatable.b(this.o, f, this.q, this) == coroutineSingletons) {
                                        return coroutineSingletons;
                                    }
                                }
                                return Unit.a;
                            }
                        }

                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                        @DebugMetadata(c = "net.blip.android.ui.gallery.ZoomableImageKt$ZoomableImage$3$1$1$6", f = "ZoomableImage.kt", l = {236}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
                        /* renamed from: net.blip.android.ui.gallery.ZoomableImageKt$ZoomableImage$3$1$1$6, reason: invalid class name */
                        /* loaded from: classes.dex */
                        public final class AnonymousClass6 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                            public int n;
                            public final /* synthetic */ Animatable o;
                            public final /* synthetic */ long p;
                            public final /* synthetic */ DecayAnimationSpec q;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            public AnonymousClass6(Animatable animatable, long j, DecayAnimationSpec decayAnimationSpec, Continuation continuation) {
                                super(2, continuation);
                                this.o = animatable;
                                this.p = j;
                                this.q = decayAnimationSpec;
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object n(Object obj, Object obj2) {
                                return ((AnonymousClass6) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation s(Object obj, Continuation continuation) {
                                return new AnonymousClass6(this.o, this.p, this.q, continuation);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object v(Object obj) {
                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                int i = this.n;
                                if (i != 0) {
                                    if (i == 1) {
                                        ResultKt.b(obj);
                                    } else {
                                        u2.l("call to 'resume' before 'invoke' with coroutine");
                                        return null;
                                    }
                                } else {
                                    ResultKt.b(obj);
                                    Float f = new Float(Velocity.c(this.p));
                                    this.n = 1;
                                    if (Animatable.b(this.o, f, this.q, this) == coroutineSingletons) {
                                        return coroutineSingletons;
                                    }
                                }
                                return Unit.a;
                            }
                        }

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public AnonymousClass1(Size size, long j, PointerInputScope pointerInputScope, Animatable animatable, Animatable animatable2, Ref$LongRef ref$LongRef, Animatable animatable3, float f, CoroutineScope coroutineScope, MutableState mutableState, DecayAnimationSpec decayAnimationSpec, Continuation continuation) {
                            super(2, continuation);
                            this.r = size;
                            this.s = j;
                            this.t = pointerInputScope;
                            this.u = animatable;
                            this.v = animatable2;
                            this.w = ref$LongRef;
                            this.x = animatable3;
                            this.y = f;
                            this.z = coroutineScope;
                            this.A = mutableState;
                            this.B = decayAnimationSpec;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object n(Object obj, Object obj2) {
                            ((AnonymousClass1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
                            return CoroutineSingletons.j;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation s(Object obj, Continuation continuation) {
                            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.r, this.s, this.t, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B, continuation);
                            anonymousClass1.q = obj;
                            return anonymousClass1;
                        }

                        /* JADX WARN: Removed duplicated region for block: B:11:0x00b8 A[RETURN] */
                        /* JADX WARN: Removed duplicated region for block: B:13:0x00b9  */
                        /* JADX WARN: Removed duplicated region for block: B:14:0x00df  */
                        /* JADX WARN: Removed duplicated region for block: B:7:0x00bf  */
                        /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$LongRef] */
                        /* JADX WARN: Type inference failed for: r12v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$FloatRef] */
                        /* JADX WARN: Type inference failed for: r14v0, types: [kotlin.jvm.internal.Ref$BooleanRef, java.lang.Object] */
                        /* JADX WARN: Type inference failed for: r7v0, types: [kotlin.jvm.internal.Ref$BooleanRef, java.lang.Object] */
                        /* JADX WARN: Type inference failed for: r8v0, types: [kotlin.jvm.internal.Ref$BooleanRef, java.lang.Object] */
                        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x00b9 -> B:5:0x00ba). Please report as a decompilation issue!!! */
                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public final Object v(Object obj) {
                            C00121 c00121;
                            Object obj2;
                            CoroutineScope coroutineScope = (CoroutineScope) this.q;
                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                            int i = this.p;
                            boolean z = true;
                            if (i != 0) {
                                if (i == 1) {
                                    Ref$BooleanRef ref$BooleanRef = this.o;
                                    VelocityTracker velocityTracker = this.n;
                                    ResultKt.b(obj);
                                    if (!ref$BooleanRef.j) {
                                        obj2 = null;
                                        BuildersKt.c(coroutineScope, null, null, new AnonymousClass2(this.u, null), 3);
                                        BuildersKt.c(coroutineScope, null, null, new AnonymousClass3(this.v, null), 3);
                                        BuildersKt.c(coroutineScope, null, null, new AnonymousClass4(this.x, null), 3);
                                    } else {
                                        obj2 = null;
                                        velocityTracker.getClass();
                                        long a = velocityTracker.a(VelocityKt.a(Float.MAX_VALUE, Float.MAX_VALUE));
                                        Animatable animatable = this.u;
                                        DecayAnimationSpec decayAnimationSpec = this.B;
                                        BuildersKt.c(coroutineScope, null, null, new AnonymousClass5(animatable, a, decayAnimationSpec, null), 3);
                                        BuildersKt.c(coroutineScope, null, null, new AnonymousClass6(this.v, a, decayAnimationSpec, null), 3);
                                    }
                                    VelocityTracker velocityTracker2 = new VelocityTracker();
                                    ?? obj3 = new Object();
                                    obj3.j = 0L;
                                    ?? obj4 = new Object();
                                    ?? obj5 = new Object();
                                    ?? obj6 = new Object();
                                    obj6.j = z;
                                    ?? obj7 = new Object();
                                    long j = this.s;
                                    Size size = this.r;
                                    float min = Math.min(((int) (j >> 32)) / size.getWidth(), ((int) (4294967295L & j)) / size.getHeight());
                                    c00121 = new C00121(obj6, obj7, this.u, this.v, obj3, obj4, this.w, obj5, this.x, this.y, new Size(MathKt.b(size.getWidth() * min), MathKt.b(size.getHeight() * min)), this.s, this.z, velocityTracker2, this.A, null);
                                    velocityTracker = velocityTracker2;
                                    this.q = coroutineScope;
                                    this.n = velocityTracker;
                                    this.o = obj5;
                                    z = true;
                                    this.p = 1;
                                    if (((SuspendingPointerInputModifierNodeImpl) this.t).Y0(c00121, this) == coroutineSingletons) {
                                        return coroutineSingletons;
                                    }
                                    ref$BooleanRef = obj5;
                                    if (!ref$BooleanRef.j) {
                                    }
                                    VelocityTracker velocityTracker22 = new VelocityTracker();
                                    ?? obj32 = new Object();
                                    obj32.j = 0L;
                                    ?? obj42 = new Object();
                                    ?? obj52 = new Object();
                                    ?? obj62 = new Object();
                                    obj62.j = z;
                                    ?? obj72 = new Object();
                                    long j2 = this.s;
                                    Size size2 = this.r;
                                    float min2 = Math.min(((int) (j2 >> 32)) / size2.getWidth(), ((int) (4294967295L & j2)) / size2.getHeight());
                                    c00121 = new C00121(obj62, obj72, this.u, this.v, obj32, obj42, this.w, obj52, this.x, this.y, new Size(MathKt.b(size2.getWidth() * min2), MathKt.b(size2.getHeight() * min2)), this.s, this.z, velocityTracker22, this.A, null);
                                    velocityTracker = velocityTracker22;
                                    this.q = coroutineScope;
                                    this.n = velocityTracker;
                                    this.o = obj52;
                                    z = true;
                                    this.p = 1;
                                    if (((SuspendingPointerInputModifierNodeImpl) this.t).Y0(c00121, this) == coroutineSingletons) {
                                    }
                                } else {
                                    u2.l("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                            } else {
                                ResultKt.b(obj);
                                VelocityTracker velocityTracker222 = new VelocityTracker();
                                ?? obj322 = new Object();
                                obj322.j = 0L;
                                ?? obj422 = new Object();
                                ?? obj522 = new Object();
                                ?? obj622 = new Object();
                                obj622.j = z;
                                ?? obj722 = new Object();
                                long j22 = this.s;
                                Size size22 = this.r;
                                float min22 = Math.min(((int) (j22 >> 32)) / size22.getWidth(), ((int) (4294967295L & j22)) / size22.getHeight());
                                c00121 = new C00121(obj622, obj722, this.u, this.v, obj322, obj422, this.w, obj522, this.x, this.y, new Size(MathKt.b(size22.getWidth() * min22), MathKt.b(size22.getHeight() * min22)), this.s, this.z, velocityTracker222, this.A, null);
                                velocityTracker = velocityTracker222;
                                this.q = coroutineScope;
                                this.n = velocityTracker;
                                this.o = obj522;
                                z = true;
                                this.p = 1;
                                if (((SuspendingPointerInputModifierNodeImpl) this.t).Y0(c00121, this) == coroutineSingletons) {
                                }
                            }
                        }
                    }

                    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$LongRef] */
                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        DecayAnimationSpec b = DecayAnimationSpecKt.b(new SplineBasedFloatDecayAnimationSpec(pointerInputScope));
                        Object c = CoroutineScopeKt.c(new AnonymousClass1(size2, ((SuspendingPointerInputModifierNodeImpl) pointerInputScope).H, pointerInputScope, animatable2, animatable3, new Object(), animatable, f3, coroutineScope, mutableState, b, null), continuation);
                        if (c == CoroutineSingletons.j) {
                            return c;
                        }
                        return Unit.a;
                    }
                };
                size = size2;
                gapComposer.g0(K7);
            }
            modifier2 = modifier;
            Modifier b = ClipKt.b(SuspendingPointerInputFilterKt.a(modifier2, size, (PointerInputEventHandler) K7));
            boolean h2 = gapComposer.h(animatable) | gapComposer.h(animatable2) | gapComposer.h(animatable3);
            Object K8 = gapComposer.K();
            if (h2 || K8 == composer$Companion$Empty$1) {
                K8 = new p2(animatable, animatable2, animatable3, 19);
                gapComposer.g0(K8);
            }
            ImageKt.a(asyncImagePainter, null, GraphicsLayerModifierKt.a(b, (Function1) K8), Alignment.Companion.e, ContentScale.Companion.b, 0.0f, null, gapComposer, 27704 | ((i6 >> 3) & 14), 96);
            z3 = true;
            f2 = 8.0f;
        } else {
            modifier2 = modifier;
            gapComposer.Q();
            f2 = f;
            z3 = z;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            final Modifier modifier3 = modifier2;
            r.d = new Function2(asyncImagePainter, f2, z3, function0, i) { // from class: yi
                public final /* synthetic */ AsyncImagePainter k;
                public final /* synthetic */ float l;
                public final /* synthetic */ boolean m;
                public final /* synthetic */ Function0 n;

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int a2 = RecomposeScopeImplKt.a(7);
                    ZoomableImageKt.a(Modifier.this, this.k, this.l, this.m, this.n, (Composer) obj, a2);
                    return Unit.a;
                }
            };
        }
    }
}
