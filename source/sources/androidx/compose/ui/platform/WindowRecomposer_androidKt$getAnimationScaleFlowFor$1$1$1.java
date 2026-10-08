package androidx.compose.ui.platform;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.provider.Settings;
import androidx.collection.MutableScatterMap;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1", f = "WindowRecomposer.android.kt", l = {119, 121}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 extends SuspendLambda implements Function2<FlowCollector<? super Float>, Continuation<? super Unit>, Object> {
    public ChannelIterator n;
    public int o;
    public /* synthetic */ Object p;
    public final /* synthetic */ ContentResolver q;
    public final /* synthetic */ Uri r;
    public final /* synthetic */ WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1 s;
    public final /* synthetic */ BufferedChannel t;
    public final /* synthetic */ Context u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1(ContentResolver contentResolver, Uri uri, WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1 windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1, BufferedChannel bufferedChannel, Context context, Continuation continuation) {
        super(2, continuation);
        this.q = contentResolver;
        this.r = uri;
        this.s = windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1;
        this.t = bufferedChannel;
        this.u = context;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1) s((FlowCollector) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 = new WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1(this.q, this.r, this.s, this.t, this.u, continuation);
        windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.p = obj;
        return windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x007b, code lost:
    
        if (r6.r(r7, r10) == r0) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0059 A[Catch: all -> 0x001b, TRY_LEAVE, TryCatch #0 {all -> 0x001b, blocks: (B:7:0x0016, B:9:0x0041, B:15:0x0051, B:17:0x0059, B:25:0x002a, B:27:0x003b), top: B:2:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x007e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x007b -> B:8:0x0019). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        FlowCollector flowCollector;
        ChannelIterator it;
        FlowCollector flowCollector2;
        Object b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1 windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1 = this.s;
        ContentResolver contentResolver = this.q;
        try {
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        it = this.n;
                        flowCollector2 = (FlowCollector) this.p;
                        ResultKt.b(obj);
                        flowCollector = flowCollector2;
                        this.p = flowCollector;
                        this.n = it;
                        this.o = 1;
                        b = it.b(this);
                        if (b == coroutineSingletons) {
                            flowCollector2 = flowCollector;
                            obj = b;
                            if (!((Boolean) obj).booleanValue()) {
                                it.next();
                                Context context = this.u;
                                MutableScatterMap mutableScatterMap = WindowRecomposer_androidKt.a;
                                Float f = new Float(Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f));
                                this.p = flowCollector2;
                                this.n = it;
                                this.o = 2;
                            } else {
                                contentResolver.unregisterContentObserver(windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1);
                                return Unit.a;
                            }
                        } else {
                            return coroutineSingletons;
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    it = this.n;
                    flowCollector2 = (FlowCollector) this.p;
                    ResultKt.b(obj);
                    if (!((Boolean) obj).booleanValue()) {
                    }
                }
            } else {
                ResultKt.b(obj);
                flowCollector = (FlowCollector) this.p;
                contentResolver.registerContentObserver(this.r, false, windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1);
                it = this.t.iterator();
                this.p = flowCollector;
                this.n = it;
                this.o = 1;
                b = it.b(this);
                if (b == coroutineSingletons) {
                }
            }
        } catch (Throwable th) {
            contentResolver.unregisterContentObserver(windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1);
            throw th;
        }
    }
}
