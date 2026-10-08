package net.blip.android.ui.transfer;

import android.content.Context;
import android.net.Uri;
import android.util.Size;
import androidx.compose.runtime.MutableState;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.StateFlow;
import net.blip.android.UriUtilKt;
import net.blip.android.filetypes.FileIconKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.transfer.TransferThumbnailStackKt$TransferThumbnailStack$1$1", f = "TransferThumbnailStack.kt", l = {46, 56}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class TransferThumbnailStackKt$TransferThumbnailStack$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public Context n;
    public Collection o;
    public Iterator p;
    public Collection q;
    public int r;
    public boolean s;
    public int t;
    public /* synthetic */ Object u;
    public final /* synthetic */ List v;
    public final /* synthetic */ Context w;
    public final /* synthetic */ boolean x;
    public final /* synthetic */ MutableState y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferThumbnailStackKt$TransferThumbnailStack$1$1(List list, Context context, boolean z, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.v = list;
        this.w = context;
        this.x = z;
        this.y = mutableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((TransferThumbnailStackKt$TransferThumbnailStack$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        TransferThumbnailStackKt$TransferThumbnailStack$1$1 transferThumbnailStackKt$TransferThumbnailStack$1$1 = new TransferThumbnailStackKt$TransferThumbnailStack$1$1(this.v, this.w, this.x, this.y, continuation);
        transferThumbnailStackKt$TransferThumbnailStack$1$1.u = obj;
        return transferThumbnailStackKt$TransferThumbnailStack$1$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ca, code lost:
    
        if (r0.a(r13, r12) == r1) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0095 -> B:12:0x0096). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        Context context;
        Collection collection;
        int i;
        boolean z;
        Iterator it;
        Size size;
        CoroutineScope coroutineScope = (CoroutineScope) this.u;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i2 = this.t;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 2) {
                    ResultKt.b(obj);
                    return Unit.a;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = this.s;
            i = this.r;
            collection = this.q;
            it = this.p;
            Collection collection2 = this.o;
            context = this.n;
            ResultKt.b(obj);
            collection.add((StateFlow) obj);
            collection = collection2;
            if (it.hasNext()) {
                Pair pair = (Pair) it.next();
                boolean booleanValue = ((Boolean) pair.j).booleanValue();
                Uri a = UriUtilKt.a((String) pair.k);
                if (z && booleanValue) {
                    size = new Size(400, 400);
                } else {
                    size = null;
                }
                this.u = coroutineScope;
                this.n = context;
                Collection collection3 = collection;
                this.o = collection3;
                this.p = it;
                this.q = collection3;
                this.r = i;
                this.s = z;
                this.t = 1;
                obj = FileIconKt.a(context, coroutineScope, a, size);
                if (obj != coroutineSingletons) {
                    collection2 = collection;
                    collection.add((StateFlow) obj);
                    collection = collection2;
                    if (it.hasNext()) {
                        TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1 transferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1 = new TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1((Flow[]) CollectionsKt.X((List) collection).toArray(new Flow[0]));
                        final MutableState mutableState = this.y;
                        FlowCollector flowCollector = new FlowCollector() { // from class: net.blip.android.ui.transfer.TransferThumbnailStackKt$TransferThumbnailStack$1$1.2
                            @Override // kotlinx.coroutines.flow.FlowCollector
                            public final Object r(Object obj2, Continuation continuation) {
                                MutableState.this.setValue((List) obj2);
                                return Unit.a;
                            }
                        };
                        this.u = null;
                        this.n = null;
                        this.o = null;
                        this.p = null;
                        this.q = null;
                        this.r = i;
                        this.t = 2;
                    }
                }
            }
            return coroutineSingletons;
        }
        ResultKt.b(obj);
        List S = CollectionsKt.S(this.v, 4);
        ArrayList arrayList = new ArrayList(CollectionsKt.m(S, 10));
        Iterator it2 = S.iterator();
        context = this.w;
        collection = arrayList;
        i = 4;
        z = this.x;
        it = it2;
        if (it.hasNext()) {
        }
        return coroutineSingletons;
    }
}
