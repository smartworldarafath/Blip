package net.blip.android.filetypes;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.Size;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.filetypes.FileIconKt$Request$2", f = "FileIcon.kt", l = {60}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class FileIconKt$Request$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public Object n;
    public Drawable o;
    public int p;
    public final /* synthetic */ MutableStateFlow q;
    public final /* synthetic */ Drawable r;
    public final /* synthetic */ Context s;
    public final /* synthetic */ Uri t;
    public final /* synthetic */ Size u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileIconKt$Request$2(MutableStateFlow mutableStateFlow, Drawable drawable, Context context, Uri uri, Size size, Continuation continuation) {
        super(2, continuation);
        this.q = mutableStateFlow;
        this.r = drawable;
        this.s = context;
        this.t = uri;
        this.u = size;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((FileIconKt$Request$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new FileIconKt$Request$2(this.q, this.r, this.s, this.t, this.u, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        MutableStateFlow mutableStateFlow;
        Drawable drawable;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.p;
        if (i != 0) {
            if (i == 1) {
                drawable = this.o;
                mutableStateFlow = (MutableStateFlow) this.n;
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            MutableStateFlow mutableStateFlow2 = this.q;
            this.n = mutableStateFlow2;
            Drawable drawable2 = this.r;
            this.o = drawable2;
            this.p = 1;
            Object b = FileIconKt.b(this.s, this.t, this.u, this);
            if (b == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj = b;
            mutableStateFlow = mutableStateFlow2;
            drawable = drawable2;
        }
        mutableStateFlow.setValue(new FileIcon(drawable, (Thumbnail) obj));
        return Unit.a;
    }
}
