package defpackage;

import android.os.CancellationSignal;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.text.TextRange;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobSupport;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class h6 implements CancellationSignal.OnCancelListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ h6(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.os.CancellationSignal.OnCancelListener
    public final void onCancel() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                ((JobSupport) ((Job) obj)).n(null);
                return;
            default:
                TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) obj;
                if (textFieldSelectionManager != null) {
                    LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.d;
                    if (legacyTextFieldState != null) {
                        legacyTextFieldState.e(TextRange.b);
                    }
                    LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.d;
                    if (legacyTextFieldState2 != null) {
                        legacyTextFieldState2.f(TextRange.b);
                        return;
                    }
                    return;
                }
                return;
        }
    }
}
