package androidx.compose.ui.text.android.selection;

import androidx.compose.ui.text.android.CharSequenceCharacterIterator;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.emoji2.text.EmojiCompat;
import defpackage.jb;
import java.lang.Character;
import java.text.BreakIterator;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WordIterator {
    public final CharSequence a;
    public final int b;
    public final int c;
    public final BreakIterator d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static boolean a(int i) {
            int type = Character.getType(i);
            if (type != 23 && type != 20 && type != 22 && type != 30 && type != 29 && type != 24 && type != 21) {
                return false;
            }
            return true;
        }
    }

    public WordIterator(CharSequence charSequence, int i, Locale locale) {
        this.a = charSequence;
        if (charSequence.length() < 0) {
            InlineClassHelperKt.a("input start index is outside the CharSequence");
        }
        if (i < 0 || i > charSequence.length()) {
            InlineClassHelperKt.a("input end index is outside the CharSequence");
        }
        BreakIterator wordInstance = BreakIterator.getWordInstance(locale);
        this.d = wordInstance;
        this.b = Math.max(0, -50);
        this.c = Math.min(charSequence.length(), i + 50);
        wordInstance.setText(new CharSequenceCharacterIterator(charSequence, i));
    }

    public final void a(int i) {
        boolean z = false;
        int i2 = this.b;
        int i3 = this.c;
        if (i <= i3 && i2 <= i) {
            z = true;
        }
        if (!z) {
            StringBuilder k = jb.k("Invalid offset: ", i, ". Valid range is [", i2, " , ");
            k.append(i3);
            k.append("]");
            InlineClassHelperKt.a(k.toString());
        }
    }

    public final boolean b(int i) {
        int i2 = this.b + 1;
        if (i <= this.c && i2 <= i) {
            CharSequence charSequence = this.a;
            if (!Character.isLetterOrDigit(Character.codePointBefore(charSequence, i))) {
                int i3 = i - 1;
                if (!Character.isSurrogate(charSequence.charAt(i3))) {
                    if (EmojiCompat.g()) {
                        EmojiCompat a = EmojiCompat.a();
                        if (a.d() != 1 || a.c(charSequence, i3) == -1) {
                            return false;
                        }
                    } else {
                        return false;
                    }
                }
            }
            return true;
        }
        return false;
    }

    public final boolean c(int i) {
        int i2 = this.b + 1;
        if (i <= this.c && i2 <= i) {
            return Companion.a(Character.codePointBefore(this.a, i));
        }
        return false;
    }

    public final boolean d(int i) {
        a(i);
        if (this.d.isBoundary(i)) {
            if (!f(i) || !f(i - 1) || !f(i + 1)) {
                if (i <= 0 || i >= this.a.length() - 1 || (!e(i) && !e(i + 1))) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public final boolean e(int i) {
        int i2 = i - 1;
        CharSequence charSequence = this.a;
        Character.UnicodeBlock of = Character.UnicodeBlock.of(charSequence.charAt(i2));
        Character.UnicodeBlock unicodeBlock = Character.UnicodeBlock.HIRAGANA;
        if (!Intrinsics.a(of, unicodeBlock) || !Intrinsics.a(Character.UnicodeBlock.of(charSequence.charAt(i)), Character.UnicodeBlock.KATAKANA)) {
            if (Intrinsics.a(Character.UnicodeBlock.of(charSequence.charAt(i)), unicodeBlock) && Intrinsics.a(Character.UnicodeBlock.of(charSequence.charAt(i2)), Character.UnicodeBlock.KATAKANA)) {
                return true;
            }
            return false;
        }
        return true;
    }

    public final boolean f(int i) {
        if (i < this.c && this.b <= i) {
            CharSequence charSequence = this.a;
            if (!Character.isLetterOrDigit(Character.codePointAt(charSequence, i)) && !Character.isSurrogate(charSequence.charAt(i))) {
                if (EmojiCompat.g()) {
                    EmojiCompat a = EmojiCompat.a();
                    if (a.d() != 1 || a.c(charSequence, i) == -1) {
                        return false;
                    }
                } else {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public final boolean g(int i) {
        if (i < this.c && this.b <= i) {
            return Companion.a(Character.codePointAt(this.a, i));
        }
        return false;
    }

    public final int h(int i) {
        a(i);
        int following = this.d.following(i);
        if (f(following - 1) && f(following) && !e(following)) {
            return h(following);
        }
        return following;
    }

    public final int i(int i) {
        a(i);
        int preceding = this.d.preceding(i);
        if (f(preceding) && b(preceding) && !e(preceding)) {
            return i(preceding);
        }
        return preceding;
    }
}
