package defpackage;

import android.graphics.Typeface;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.util.Consumer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class y2 implements Consumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ TextView b;

    public /* synthetic */ y2(TextView textView, int i) {
        this.a = i;
        this.b = textView;
    }

    @Override // androidx.core.util.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        TextView textView = this.b;
        switch (i) {
            case 0:
                AppCompatButton.a((AppCompatButton) textView, (Typeface) obj);
                return;
            case 1:
                AppCompatEditText.b((AppCompatEditText) textView, (Typeface) obj);
                return;
            default:
                AppCompatTextView.d((AppCompatTextView) textView, (Typeface) obj);
                return;
        }
    }
}
