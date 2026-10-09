package androidx.compose.foundation.text.selection;

import android.view.textclassifier.TextClassification;
import androidx.compose.ui.text.TextRange;
import defpackage.jb;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextClassificationResult {
    public final CharSequence a;
    public final long b;
    public final TextClassification c;
    public final ArrayList d;

    public TextClassificationResult(CharSequence charSequence, long j, TextClassification textClassification, ArrayList arrayList) {
        this.a = charSequence;
        this.b = j;
        this.c = textClassification;
        this.d = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof TextClassificationResult) {
                TextClassificationResult textClassificationResult = (TextClassificationResult) obj;
                if (!Intrinsics.a(this.a, textClassificationResult.a) || !TextRange.b(this.b, textClassificationResult.b) || !Intrinsics.a(this.c, textClassificationResult.c) || !this.d.equals(textClassificationResult.d)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode = this.a.hashCode() * 31;
        int i = TextRange.c;
        return this.d.hashCode() + ((this.c.hashCode() + jb.a(hashCode, 31, this.b)) * 31);
    }

    public final String toString() {
        return "TextClassificationResult(text=" + ((Object) this.a) + ", selection=" + TextRange.h(this.b) + ", textClassification=" + this.c + ", icons=" + this.d + ")";
    }
}
