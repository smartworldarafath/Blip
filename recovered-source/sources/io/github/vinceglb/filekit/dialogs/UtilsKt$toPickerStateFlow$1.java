package io.github.vinceglb.filekit.dialogs;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import io.github.vinceglb.filekit.PlatformFile;
import io.github.vinceglb.filekit.dialogs.FileKitPickerState;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ChannelCoroutine;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "io.github.vinceglb.filekit.dialogs.UtilsKt$toPickerStateFlow$1", f = "Utils.kt", l = {15, 19, 21, 23}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class UtilsKt$toPickerStateFlow$1 extends SuspendLambda implements Function2<ProducerScope<? super FileKitPickerState<? extends List<? extends PlatformFile>>>, Continuation<? super Unit>, Object> {
    public List n;
    public Iterator o;
    public int p;
    public int q;
    public /* synthetic */ Object r;
    public final /* synthetic */ List s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UtilsKt$toPickerStateFlow$1(List list, Continuation continuation) {
        super(2, continuation);
        this.s = list;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((UtilsKt$toPickerStateFlow$1) s((ProducerScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        UtilsKt$toPickerStateFlow$1 utilsKt$toPickerStateFlow$1 = new UtilsKt$toPickerStateFlow$1(this.s, continuation);
        utilsKt$toPickerStateFlow$1.r = obj;
        return utilsKt$toPickerStateFlow$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00af, code lost:
    
        if (((kotlinx.coroutines.channels.ChannelCoroutine) r0).m.k(r13, r12) == r1) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0057, code lost:
    
        if (((kotlinx.coroutines.channels.ChannelCoroutine) r0).m.k(r13, r12) == r1) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c0, code lost:
    
        if (((kotlinx.coroutines.channels.ChannelCoroutine) r0).m.k(io.github.vinceglb.filekit.dialogs.FileKitPickerState.Cancelled.a, r12) == r1) goto L37;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        Iterator it;
        int i;
        List list;
        SendChannel sendChannel = (ProducerScope) this.r;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i2 = this.q;
        List list2 = this.s;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        int i3 = this.p;
                        it = this.o;
                        list = this.n;
                        ResultKt.b(obj);
                        i = i3;
                    }
                } else {
                    ResultKt.b(obj);
                    it = list2.iterator();
                    i = 0;
                    list = list2;
                }
            }
            ResultKt.b(obj);
            return Unit.a;
        }
        ResultKt.b(obj);
        if (list2 != null && !list2.isEmpty()) {
            FileKitPickerState.Started started = new FileKitPickerState.Started(list2.size());
            this.r = sendChannel;
            this.q = 2;
        } else {
            this.r = null;
            this.q = 1;
        }
        return coroutineSingletons;
        while (true) {
            if (it.hasNext()) {
                Object next = it.next();
                int i4 = i + 1;
                if (i >= 0) {
                    FileKitPickerState.Progress progress = new FileKitPickerState.Progress(list.size(), list.subList(0, i4));
                    this.r = sendChannel;
                    this.n = list;
                    this.o = it;
                    this.p = i4;
                    this.q = 3;
                    if (((ChannelCoroutine) sendChannel).m.k(progress, this) == coroutineSingletons) {
                        break;
                    }
                    i = i4;
                } else {
                    CollectionsKt.T();
                    throw null;
                }
            } else {
                FileKitPickerState.Completed completed = new FileKitPickerState.Completed(list2);
                this.r = null;
                this.n = null;
                this.o = null;
                this.q = 4;
            }
        }
    }
}
