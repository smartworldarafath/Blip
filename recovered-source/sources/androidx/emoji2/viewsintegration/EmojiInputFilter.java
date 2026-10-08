package androidx.emoji2.viewsintegration;

import android.os.Handler;
import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.text.Spanned;
import android.widget.TextView;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.WeakReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class EmojiInputFilter implements InputFilter {
    public final TextView a;
    public EmojiCompat.InitCallback b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class InitCallbackImpl extends EmojiCompat.InitCallback implements Runnable {
        public final WeakReference j;
        public final WeakReference k;

        public InitCallbackImpl(TextView textView, EmojiInputFilter emojiInputFilter) {
            this.j = new WeakReference(textView);
            this.k = new WeakReference(emojiInputFilter);
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public final void b() {
            Handler handler;
            TextView textView = (TextView) this.j.get();
            if (textView != null && (handler = textView.getHandler()) != null) {
                handler.post(this);
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            InputFilter[] filters;
            int length;
            TextView textView = (TextView) this.j.get();
            InputFilter inputFilter = (InputFilter) this.k.get();
            if (inputFilter != null && textView != null && (filters = textView.getFilters()) != null) {
                for (InputFilter inputFilter2 : filters) {
                    if (inputFilter2 == inputFilter) {
                        if (textView.isAttachedToWindow()) {
                            CharSequence text = textView.getText();
                            EmojiCompat a = EmojiCompat.a();
                            if (text == null) {
                                length = 0;
                            } else {
                                a.getClass();
                                length = text.length();
                            }
                            CharSequence j = a.j(0, length, 0, text);
                            if (text != j) {
                                int selectionStart = Selection.getSelectionStart(j);
                                int selectionEnd = Selection.getSelectionEnd(j);
                                textView.setText(j);
                                if (j instanceof Spannable) {
                                    Spannable spannable = (Spannable) j;
                                    if (selectionStart >= 0 && selectionEnd >= 0) {
                                        Selection.setSelection(spannable, selectionStart, selectionEnd);
                                        return;
                                    } else if (selectionStart >= 0) {
                                        Selection.setSelection(spannable, selectionStart);
                                        return;
                                    } else {
                                        if (selectionEnd >= 0) {
                                            Selection.setSelection(spannable, selectionEnd);
                                            return;
                                        }
                                        return;
                                    }
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    }
                }
            }
        }
    }

    public EmojiInputFilter(TextView textView) {
        this.a = textView;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0017, code lost:
    
        if (r1 != 3) goto L27;
     */
    @Override // android.text.InputFilter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        TextView textView = this.a;
        if (!textView.isInEditMode()) {
            int d = EmojiCompat.a().d();
            if (d != 0) {
                if (d == 1) {
                    if ((i4 != 0 || i3 != 0 || spanned.length() != 0 || charSequence != textView.getText()) && charSequence != null) {
                        if (i != 0 || i2 != charSequence.length()) {
                            charSequence = charSequence.subSequence(i, i2);
                        }
                        return EmojiCompat.a().j(0, charSequence.length(), 0, charSequence);
                    }
                }
            }
            EmojiCompat a = EmojiCompat.a();
            if (this.b == null) {
                this.b = new InitCallbackImpl(textView, this);
            }
            a.k(this.b);
            return charSequence;
        }
        return charSequence;
    }
}
