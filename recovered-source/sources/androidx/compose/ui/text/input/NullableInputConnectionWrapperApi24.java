package androidx.compose.ui.text.input;

import android.os.Handler;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class NullableInputConnectionWrapperApi24 extends NullableInputConnectionWrapperApi21 {
    @Override // android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i, int i2) {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.b;
        if (recordingInputConnection != null) {
            return recordingInputConnection.deleteSurroundingTextInCodePoints(i, i2);
        }
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public final Handler getHandler() {
        return null;
    }
}
