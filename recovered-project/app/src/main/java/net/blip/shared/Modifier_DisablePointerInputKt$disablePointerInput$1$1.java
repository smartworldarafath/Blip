package net.blip.shared;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Modifier_DisablePointerInputKt$disablePointerInput$1$1 implements PointerInputEventHandler {
    public static final Modifier_DisablePointerInputKt$disablePointerInput$1$1 a = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "net.blip.shared.Modifier_DisablePointerInputKt$disablePointerInput$1$1$1", f = "Modifier+DisablePointerInput.kt", l = {14}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
    /* renamed from: net.blip.shared.Modifier_DisablePointerInputKt$disablePointerInput$1$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
        public int l;
        public /* synthetic */ Object m;

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            ((AnonymousClass1) s((AwaitPointerEventScope) obj, (Continuation) obj2)).v(Unit.a);
            return CoroutineSingletons.j;
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.coroutines.Continuation, kotlin.coroutines.jvm.internal.RestrictedSuspendLambda, net.blip.shared.Modifier_DisablePointerInputKt$disablePointerInput$1$1$1] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            ?? restrictedSuspendLambda = new RestrictedSuspendLambda(2, continuation);
            restrictedSuspendLambda.m = obj;
            return restrictedSuspendLambda;
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0027 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0036 A[LOOP:0: B:6:0x0030->B:8:0x0036, LOOP_END] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0025 -> B:5:0x0028). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final java.lang.Object v(java.lang.Object r5) {
            /*
                r4 = this;
                java.lang.Object r0 = r4.m
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r0 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r0
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.j
                int r2 = r4.l
                r3 = 1
                if (r2 == 0) goto L18
                if (r2 != r3) goto L11
                kotlin.ResultKt.b(r5)
                goto L28
            L11:
                java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.u2.l(r4)
                r4 = 0
                return r4
            L18:
                kotlin.ResultKt.b(r5)
            L1b:
                androidx.compose.ui.input.pointer.PointerEventPass r5 = androidx.compose.ui.input.pointer.PointerEventPass.j
                r4.m = r0
                r4.l = r3
                java.lang.Object r5 = r0.q(r5, r4)
                if (r5 != r1) goto L28
                return r1
            L28:
                androidx.compose.ui.input.pointer.PointerEvent r5 = (androidx.compose.ui.input.pointer.PointerEvent) r5
                java.util.List r5 = r5.a
                java.util.Iterator r5 = r5.iterator()
            L30:
                boolean r2 = r5.hasNext()
                if (r2 == 0) goto L1b
                java.lang.Object r2 = r5.next()
                androidx.compose.ui.input.pointer.PointerInputChange r2 = (androidx.compose.ui.input.pointer.PointerInputChange) r2
                r2.a()
                goto L30
            */
            throw new UnsupportedOperationException("Method not decompiled: net.blip.shared.Modifier_DisablePointerInputKt$disablePointerInput$1$1.AnonymousClass1.v(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlin.coroutines.jvm.internal.RestrictedSuspendLambda, kotlin.jvm.functions.Function2] */
    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
        Object Y0 = ((SuspendingPointerInputModifierNodeImpl) pointerInputScope).Y0(new RestrictedSuspendLambda(2, null), continuation);
        if (Y0 == CoroutineSingletons.j) {
            return Y0;
        }
        return Unit.a;
    }
}
