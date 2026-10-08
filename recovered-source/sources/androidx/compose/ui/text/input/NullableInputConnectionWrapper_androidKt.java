package androidx.compose.ui.text.input;

import android.os.Build;
import androidx.compose.ui.platform.b;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NullableInputConnectionWrapper_androidKt {
    public static final NullableInputConnectionWrapper a(androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection, b bVar) {
        if (Build.VERSION.SDK_INT >= 34) {
            return new NullableInputConnectionWrapperApi21(recordingInputConnection, bVar);
        }
        return new NullableInputConnectionWrapperApi21(recordingInputConnection, bVar);
    }
}
