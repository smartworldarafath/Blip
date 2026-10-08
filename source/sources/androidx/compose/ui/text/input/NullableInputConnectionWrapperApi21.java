package androidx.compose.ui.text.input;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import androidx.compose.ui.platform.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NullableInputConnectionWrapperApi21 implements NullableInputConnectionWrapper {
    public final b a;
    public androidx.compose.foundation.text.input.internal.RecordingInputConnection b;

    public NullableInputConnectionWrapperApi21(androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection, b bVar) {
        this.a = bVar;
        this.b = recordingInputConnection;
    }

    @Override // androidx.compose.ui.text.input.NullableInputConnectionWrapper
    public final void a() {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.b;
        if (recordingInputConnection != null) {
            recordingInputConnection.closeConnection();
            this.b = null;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean beginBatchEdit() {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.b;
        if (recordingInputConnection != null) {
            return recordingInputConnection.beginBatchEdit();
        }
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean clearMetaKeyStates(int i) {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.b;
        if (recordingInputConnection != null) {
            return recordingInputConnection.clearMetaKeyStates(i);
        }
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public final void closeConnection() {
        if (this.b != null) {
            a();
            this.a.b(this);
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean commitCompletion(CompletionInfo completionInfo) {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.b;
        if (recordingInputConnection != null) {
            return recordingInputConnection.commitCompletion(completionInfo);
        }
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean commitCorrection(CorrectionInfo correctionInfo) {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.b;
        if (recordingInputConnection != null) {
            return recordingInputConnection.commitCorrection(correctionInfo);
        }
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean commitText(CharSequence charSequence, int i) {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.b;
        if (recordingInputConnection != null) {
            return recordingInputConnection.commitText(charSequence, i);
        }
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingText(int i, int i2) {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.b;
        if (recordingInputConnection != null) {
            return recordingInputConnection.deleteSurroundingText(i, i2);
        }
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean endBatchEdit() {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.b;
        if (recordingInputConnection != null) {
            return recordingInputConnection.c();
        }
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean finishComposingText() {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.b;
        if (recordingInputConnection != null) {
            return recordingInputConnection.finishComposingText();
        }
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public final int getCursorCapsMode(int i) {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.b;
        if (recordingInputConnection != null) {
            return recordingInputConnection.getCursorCapsMode(i);
        }
        return 0;
    }

    @Override // android.view.inputmethod.InputConnection
    public final ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest, int i) {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.b;
        if (recordingInputConnection != null) {
            return recordingInputConnection.getExtractedText(extractedTextRequest, i);
        }
        return null;
    }

    @Override // android.view.inputmethod.InputConnection
    public final CharSequence getSelectedText(int i) {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.b;
        if (recordingInputConnection != null) {
            return recordingInputConnection.getSelectedText(i);
        }
        return null;
    }

    @Override // android.view.inputmethod.InputConnection
    public final CharSequence getTextAfterCursor(int i, int i2) {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.b;
        if (recordingInputConnection != null) {
            return recordingInputConnection.getTextAfterCursor(i, i2);
        }
        return null;
    }

    @Override // android.view.inputmethod.InputConnection
    public final CharSequence getTextBeforeCursor(int i, int i2) {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.b;
        if (recordingInputConnection != null) {
            return recordingInputConnection.getTextBeforeCursor(i, i2);
        }
        return null;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean performContextMenuAction(int i) {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.b;
        if (recordingInputConnection != null) {
            return recordingInputConnection.performContextMenuAction(i);
        }
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean performEditorAction(int i) {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.b;
        if (recordingInputConnection != null) {
            return recordingInputConnection.performEditorAction(i);
        }
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean performPrivateCommand(String str, Bundle bundle) {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.b;
        if (recordingInputConnection != null) {
            return recordingInputConnection.performPrivateCommand(str, bundle);
        }
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean reportFullscreenMode(boolean z) {
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean requestCursorUpdates(int i) {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.b;
        if (recordingInputConnection != null) {
            return recordingInputConnection.requestCursorUpdates(i);
        }
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean sendKeyEvent(KeyEvent keyEvent) {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.b;
        if (recordingInputConnection != null) {
            return recordingInputConnection.sendKeyEvent(keyEvent);
        }
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean setComposingRegion(int i, int i2) {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.b;
        if (recordingInputConnection != null) {
            return recordingInputConnection.setComposingRegion(i, i2);
        }
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean setComposingText(CharSequence charSequence, int i) {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.b;
        if (recordingInputConnection != null) {
            return recordingInputConnection.setComposingText(charSequence, i);
        }
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean setSelection(int i, int i2) {
        androidx.compose.foundation.text.input.internal.RecordingInputConnection recordingInputConnection = this.b;
        if (recordingInputConnection != null) {
            return recordingInputConnection.setSelection(i, i2);
        }
        return false;
    }
}
