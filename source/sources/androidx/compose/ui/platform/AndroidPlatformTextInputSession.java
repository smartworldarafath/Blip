package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest;
import androidx.compose.ui.SessionMutex;
import androidx.compose.ui.text.input.TextInputService;
import defpackage.f7;
import defpackage.u2;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.ResultKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidPlatformTextInputSession implements PlatformTextInputSession, CoroutineScope {
    public final View j;
    public final TextInputService k;
    public final CoroutineScope l;
    public final AtomicReference m = new AtomicReference(null);

    public AndroidPlatformTextInputSession(View view, TextInputService textInputService, CoroutineScope coroutineScope) {
        this.j = view;
        this.k = textInputService;
        this.l = coroutineScope;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(LegacyTextInputMethodRequest legacyTextInputMethodRequest, ContinuationImpl continuationImpl) {
        AndroidPlatformTextInputSession$startInputMethod$1 androidPlatformTextInputSession$startInputMethod$1;
        int i;
        if (continuationImpl instanceof AndroidPlatformTextInputSession$startInputMethod$1) {
            androidPlatformTextInputSession$startInputMethod$1 = (AndroidPlatformTextInputSession$startInputMethod$1) continuationImpl;
            int i2 = androidPlatformTextInputSession$startInputMethod$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                androidPlatformTextInputSession$startInputMethod$1.o = i2 - Integer.MIN_VALUE;
                Object obj = androidPlatformTextInputSession$startInputMethod$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = androidPlatformTextInputSession$startInputMethod$1.o;
                if (i == 0) {
                    if (i != 1) {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return;
                    }
                    ResultKt.b(obj);
                } else {
                    ResultKt.b(obj);
                    d dVar = new d(0, legacyTextInputMethodRequest, this);
                    AndroidPlatformTextInputSession$startInputMethod$3 androidPlatformTextInputSession$startInputMethod$3 = new AndroidPlatformTextInputSession$startInputMethod$3(this, null);
                    androidPlatformTextInputSession$startInputMethod$1.o = 1;
                    if (SessionMutex.b(this.m, dVar, androidPlatformTextInputSession$startInputMethod$3, androidPlatformTextInputSession$startInputMethod$1) == coroutineSingletons) {
                        return;
                    }
                }
                f7.h();
            }
        }
        androidPlatformTextInputSession$startInputMethod$1 = new AndroidPlatformTextInputSession$startInputMethod$1(this, continuationImpl);
        Object obj2 = androidPlatformTextInputSession$startInputMethod$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = androidPlatformTextInputSession$startInputMethod$1.o;
        if (i == 0) {
        }
        f7.h();
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.l.getCoroutineContext();
    }
}
