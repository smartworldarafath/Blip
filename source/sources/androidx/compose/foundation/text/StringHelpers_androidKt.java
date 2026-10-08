package androidx.compose.foundation.text;

import androidx.emoji2.text.EmojiCompat;
import java.text.BreakIterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class StringHelpers_androidKt {
    public static final int a(int i, String str) {
        EmojiCompat c = c();
        Integer num = null;
        if (c != null) {
            int b = c.b(i, str);
            Integer valueOf = Integer.valueOf(b);
            if (b != -1) {
                num = valueOf;
            }
        }
        if (num != null) {
            return num.intValue();
        }
        BreakIterator characterInstance = BreakIterator.getCharacterInstance();
        characterInstance.setText(str);
        return characterInstance.following(i);
    }

    public static final int b(int i, String str) {
        EmojiCompat c = c();
        Integer num = null;
        if (c != null) {
            Integer valueOf = Integer.valueOf(c.c(str, Math.max(0, i - 1)));
            if (valueOf.intValue() != -1) {
                num = valueOf;
            }
        }
        if (num != null) {
            return num.intValue();
        }
        BreakIterator characterInstance = BreakIterator.getCharacterInstance();
        characterInstance.setText(str);
        return characterInstance.preceding(i);
    }

    public static final EmojiCompat c() {
        if (EmojiCompat.g()) {
            EmojiCompat a = EmojiCompat.a();
            if (a.d() == 1) {
                return a;
            }
            return null;
        }
        return null;
    }
}
