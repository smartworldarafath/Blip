package androidx.compose.ui.platform;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.node.WeakReference;
import androidx.compose.ui.text.input.NullableInputConnectionWrapper;
import androidx.compose.ui.text.input.PlatformTextInputService;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;
import defpackage.f7;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.ui.platform.AndroidPlatformTextInputSession$startInputMethod$3", f = "AndroidPlatformTextInputSession.android.kt", l = {184}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class AndroidPlatformTextInputSession$startInputMethod$3 extends SuspendLambda implements Function2<InputMethodSession, Continuation<?>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ AndroidPlatformTextInputSession p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidPlatformTextInputSession$startInputMethod$3(AndroidPlatformTextInputSession androidPlatformTextInputSession, Continuation continuation) {
        super(2, continuation);
        this.p = androidPlatformTextInputSession;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        ((AndroidPlatformTextInputSession$startInputMethod$3) s((InputMethodSession) obj, (Continuation) obj2)).v(Unit.a);
        return CoroutineSingletons.j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        AndroidPlatformTextInputSession$startInputMethod$3 androidPlatformTextInputSession$startInputMethod$3 = new AndroidPlatformTextInputSession$startInputMethod$3(this.p, continuation);
        androidPlatformTextInputSession$startInputMethod$3.o = obj;
        return androidPlatformTextInputSession$startInputMethod$3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i != 1) {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            final InputMethodSession inputMethodSession = (InputMethodSession) this.o;
            this.o = inputMethodSession;
            this.n = 1;
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(this));
            cancellableContinuationImpl.v();
            final AndroidPlatformTextInputSession androidPlatformTextInputSession = this.p;
            TextInputService textInputService = androidPlatformTextInputSession.k;
            PlatformTextInputService platformTextInputService = textInputService.a;
            platformTextInputService.a();
            textInputService.b.set(new TextInputSession(textInputService, platformTextInputService));
            cancellableContinuationImpl.x(new Function1<Throwable, Unit>() { // from class: androidx.compose.ui.platform.AndroidPlatformTextInputSession$startInputMethod$3$1$1
                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj2) {
                    InputMethodSession inputMethodSession2 = InputMethodSession.this;
                    synchronized (inputMethodSession2.c) {
                        try {
                            inputMethodSession2.e = true;
                            MutableVector mutableVector = inputMethodSession2.d;
                            Object[] objArr = mutableVector.j;
                            int i2 = mutableVector.l;
                            for (int i3 = 0; i3 < i2; i3++) {
                                NullableInputConnectionWrapper nullableInputConnectionWrapper = (NullableInputConnectionWrapper) ((WeakReference) objArr[i3]).get();
                                if (nullableInputConnectionWrapper != null) {
                                    nullableInputConnectionWrapper.a();
                                }
                            }
                            inputMethodSession2.d.g();
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    TextInputService textInputService2 = androidPlatformTextInputSession.k;
                    textInputService2.b.set(null);
                    textInputService2.a.d();
                    return Unit.a;
                }
            });
            if (cancellableContinuationImpl.u() == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        f7.h();
        return null;
    }
}
