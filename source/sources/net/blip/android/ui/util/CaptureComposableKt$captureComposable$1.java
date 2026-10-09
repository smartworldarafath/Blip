package net.blip.android.ui.util;

import androidx.activity.ComponentActivity;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.util.CaptureComposableKt", f = "CaptureComposable.kt", l = {48, 59}, m = "captureComposable-YuIfr8w", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class CaptureComposableKt$captureComposable$1 extends ContinuationImpl {
    public ComponentActivity m;
    public ComposableLambdaImpl n;
    public long o;
    public long p;
    public boolean q;
    public /* synthetic */ Object r;
    public int s;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.r = obj;
        this.s |= Integer.MIN_VALUE;
        return CaptureComposableKt.a(null, 0L, null, false, null, this);
    }
}
