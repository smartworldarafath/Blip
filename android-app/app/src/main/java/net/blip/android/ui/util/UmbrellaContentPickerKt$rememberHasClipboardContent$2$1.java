package net.blip.android.ui.util;

import android.content.ClipboardManager;
import androidx.compose.runtime.MutableState;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.util.UmbrellaContentPickerKt$rememberHasClipboardContent$2$1", f = "UmbrellaContentPicker.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class UmbrellaContentPickerKt$rememberHasClipboardContent$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ boolean n;
    public final /* synthetic */ ClipboardManager o;
    public final /* synthetic */ MutableState p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UmbrellaContentPickerKt$rememberHasClipboardContent$2$1(boolean z, ClipboardManager clipboardManager, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.n = z;
        this.o = clipboardManager;
        this.p = mutableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        UmbrellaContentPickerKt$rememberHasClipboardContent$2$1 umbrellaContentPickerKt$rememberHasClipboardContent$2$1 = (UmbrellaContentPickerKt$rememberHasClipboardContent$2$1) s((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.a;
        umbrellaContentPickerKt$rememberHasClipboardContent$2$1.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new UmbrellaContentPickerKt$rememberHasClipboardContent$2$1(this.n, this.o, this.p, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        if (this.n) {
            this.p.setValue(Boolean.valueOf(this.o.hasPrimaryClip()));
        }
        return Unit.a;
    }
}
