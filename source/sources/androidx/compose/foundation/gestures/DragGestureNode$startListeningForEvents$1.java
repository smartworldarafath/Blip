package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.DragEvent;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.channels.BufferedChannel;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureNode$startListeningForEvents$1", f = "Draggable.kt", l = {517, 519, 521, 528, 530, 533}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class DragGestureNode$startListeningForEvents$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public Ref$ObjectRef n;
    public Ref$ObjectRef o;
    public int p;
    public /* synthetic */ Object q;
    public final /* synthetic */ DragGestureNode r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureNode$startListeningForEvents$1$1", f = "Draggable.kt", l = {524}, m = "invokeSuspend", v = 1)
    /* renamed from: androidx.compose.foundation.gestures.DragGestureNode$startListeningForEvents$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<Function1<? super DragEvent.DragDelta, ? extends Unit>, Continuation<? super Unit>, Object> {
        public Ref$ObjectRef n;
        public int o;
        public /* synthetic */ Object p;
        public final /* synthetic */ Ref$ObjectRef q;
        public final /* synthetic */ DragGestureNode r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Ref$ObjectRef ref$ObjectRef, DragGestureNode dragGestureNode, Continuation continuation) {
            super(2, continuation);
            this.q = ref$ObjectRef;
            this.r = dragGestureNode;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass1) s((Function1) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.q, this.r, continuation);
            anonymousClass1.p = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x002a  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x004b -> B:5:0x004e). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0051 -> B:6:0x0052). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object v(Object obj) {
            Function1 function1;
            Object obj2;
            DragEvent.DragDelta dragDelta;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.o;
            if (i != 0) {
                if (i == 1) {
                    Ref$ObjectRef ref$ObjectRef = this.n;
                    function1 = (Function1) this.p;
                    ResultKt.b(obj);
                    DragEvent dragEvent = (DragEvent) obj;
                    ref$ObjectRef.j = dragEvent;
                    ref$ObjectRef = this.q;
                    obj2 = ref$ObjectRef.j;
                    if ((obj2 instanceof DragEvent.DragStopped) && !(obj2 instanceof DragEvent.DragCancelled)) {
                        if (obj2 instanceof DragEvent.DragDelta) {
                            dragDelta = (DragEvent.DragDelta) obj2;
                        } else {
                            dragDelta = null;
                        }
                        if (dragDelta != null) {
                            function1.b(dragDelta);
                        }
                        BufferedChannel bufferedChannel = this.r.D;
                        if (bufferedChannel != null) {
                            this.p = function1;
                            this.n = ref$ObjectRef;
                            this.o = 1;
                            obj = bufferedChannel.i(this);
                            if (obj == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                            DragEvent dragEvent2 = (DragEvent) obj;
                            ref$ObjectRef.j = dragEvent2;
                            ref$ObjectRef = this.q;
                            obj2 = ref$ObjectRef.j;
                            if (obj2 instanceof DragEvent.DragStopped) {
                            }
                            return Unit.a;
                        }
                        dragEvent2 = null;
                        ref$ObjectRef.j = dragEvent2;
                        ref$ObjectRef = this.q;
                        obj2 = ref$ObjectRef.j;
                        if (obj2 instanceof DragEvent.DragStopped) {
                        }
                        return Unit.a;
                    }
                    return Unit.a;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            function1 = (Function1) this.p;
            ref$ObjectRef = this.q;
            obj2 = ref$ObjectRef.j;
            if (obj2 instanceof DragEvent.DragStopped) {
            }
            return Unit.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragGestureNode$startListeningForEvents$1(DragGestureNode dragGestureNode, Continuation continuation) {
        super(2, continuation);
        this.r = dragGestureNode;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((DragGestureNode$startListeningForEvents$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        DragGestureNode$startListeningForEvents$1 dragGestureNode$startListeningForEvents$1 = new DragGestureNode$startListeningForEvents$1(this.r, continuation);
        dragGestureNode$startListeningForEvents$1.q = obj;
        return dragGestureNode$startListeningForEvents$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a6, code lost:
    
        if (r3.f1(r7, r6) != r0) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00d0, code lost:
    
        if (androidx.compose.foundation.gestures.DragGestureNode.b1(r3, r6) == r0) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00de, code lost:
    
        if (androidx.compose.foundation.gestures.DragGestureNode.b1(r3, r6) != r0) goto L11;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0007. Please report as an issue. */
    /* JADX WARN: Path cross not found for [B:30:0x00c1, B:27:0x00af], limit reached: 56 */
    /* JADX WARN: Removed duplicated region for block: B:10:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e1  */
    /* JADX WARN: Type inference failed for: r1v21, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0080 -> B:8:0x0054). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00bc -> B:8:0x0054). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00c3 -> B:8:0x0054). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00d0 -> B:8:0x0054). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00de -> B:7:0x0025). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        CoroutineScope coroutineScope;
        Ref$ObjectRef ref$ObjectRef;
        Ref$ObjectRef ref$ObjectRef2;
        CoroutineScope coroutineScope2;
        CoroutineScope coroutineScope3;
        DragEvent dragEvent;
        Ref$ObjectRef ref$ObjectRef3;
        Object obj2;
        Ref$ObjectRef ref$ObjectRef4;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.p;
        DragGestureNode dragGestureNode = this.r;
        switch (i) {
            case 0:
                ResultKt.b(obj);
                coroutineScope = (CoroutineScope) this.q;
                if (CoroutineScopeKt.d(coroutineScope)) {
                    ?? obj3 = new Object();
                    BufferedChannel bufferedChannel = dragGestureNode.D;
                    if (bufferedChannel != null) {
                        this.q = coroutineScope;
                        this.n = obj3;
                        this.o = obj3;
                        this.p = 1;
                        obj = bufferedChannel.i(this);
                        if (obj != coroutineSingletons) {
                            ref$ObjectRef = obj3;
                            ref$ObjectRef4 = obj3;
                            dragEvent = (DragEvent) obj;
                            ref$ObjectRef3 = ref$ObjectRef4;
                            ref$ObjectRef3.j = dragEvent;
                            obj2 = ref$ObjectRef.j;
                            if (obj2 instanceof DragEvent.DragStarted) {
                                this.q = coroutineScope;
                                this.n = ref$ObjectRef;
                                this.o = null;
                                this.p = 2;
                                if (DragGestureNode.c1(dragGestureNode, (DragEvent.DragStarted) obj2, this) != coroutineSingletons) {
                                    ref$ObjectRef2 = ref$ObjectRef;
                                    coroutineScope2 = coroutineScope;
                                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(ref$ObjectRef2, dragGestureNode, null);
                                    this.q = coroutineScope2;
                                    this.n = ref$ObjectRef2;
                                    this.p = 3;
                                    break;
                                }
                            }
                            if (CoroutineScopeKt.d(coroutineScope)) {
                                return Unit.a;
                            }
                        }
                        return coroutineSingletons;
                    }
                    ref$ObjectRef = obj3;
                    dragEvent = null;
                    ref$ObjectRef3 = obj3;
                    ref$ObjectRef3.j = dragEvent;
                    obj2 = ref$ObjectRef.j;
                    if (obj2 instanceof DragEvent.DragStarted) {
                    }
                    if (CoroutineScopeKt.d(coroutineScope)) {
                    }
                }
            case 1:
                Ref$ObjectRef ref$ObjectRef5 = this.o;
                ref$ObjectRef = this.n;
                coroutineScope = (CoroutineScope) this.q;
                ResultKt.b(obj);
                ref$ObjectRef4 = ref$ObjectRef5;
                dragEvent = (DragEvent) obj;
                ref$ObjectRef3 = ref$ObjectRef4;
                ref$ObjectRef3.j = dragEvent;
                obj2 = ref$ObjectRef.j;
                if (obj2 instanceof DragEvent.DragStarted) {
                }
                if (CoroutineScopeKt.d(coroutineScope)) {
                }
                break;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ref$ObjectRef2 = this.n;
                coroutineScope2 = (CoroutineScope) this.q;
                ResultKt.b(obj);
                AnonymousClass1 anonymousClass12 = new AnonymousClass1(ref$ObjectRef2, dragGestureNode, null);
                this.q = coroutineScope2;
                this.n = ref$ObjectRef2;
                this.p = 3;
                break;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                ref$ObjectRef2 = this.n;
                coroutineScope2 = (CoroutineScope) this.q;
                try {
                    ResultKt.b(obj);
                } catch (CancellationException unused) {
                    coroutineScope3 = coroutineScope2;
                    this.q = coroutineScope3;
                    this.n = null;
                    this.p = 6;
                    break;
                }
                coroutineScope = coroutineScope2;
                try {
                } catch (CancellationException unused2) {
                    coroutineScope3 = coroutineScope;
                    this.q = coroutineScope3;
                    this.n = null;
                    this.p = 6;
                }
                Object obj4 = ref$ObjectRef2.j;
                if (obj4 instanceof DragEvent.DragStopped) {
                    this.q = coroutineScope;
                    this.n = null;
                    this.p = 4;
                    if (DragGestureNode.d1(dragGestureNode, (DragEvent.DragStopped) obj4, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    if (CoroutineScopeKt.d(coroutineScope)) {
                    }
                } else {
                    if (obj4 instanceof DragEvent.DragCancelled) {
                        this.q = coroutineScope;
                        this.n = null;
                        this.p = 5;
                        break;
                    }
                    if (CoroutineScopeKt.d(coroutineScope)) {
                    }
                }
                break;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                coroutineScope3 = (CoroutineScope) this.q;
                try {
                    ResultKt.b(obj);
                } catch (CancellationException unused3) {
                    this.q = coroutineScope3;
                    this.n = null;
                    this.p = 6;
                    break;
                }
                coroutineScope = coroutineScope3;
                if (CoroutineScopeKt.d(coroutineScope)) {
                }
                break;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                coroutineScope3 = (CoroutineScope) this.q;
                ResultKt.b(obj);
                coroutineScope = coroutineScope3;
                if (CoroutineScopeKt.d(coroutineScope)) {
                }
                break;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                coroutineScope3 = (CoroutineScope) this.q;
                ResultKt.b(obj);
                coroutineScope = coroutineScope3;
                if (CoroutineScopeKt.d(coroutineScope)) {
                }
                break;
            default:
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }
}
