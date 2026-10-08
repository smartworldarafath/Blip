package kotlin.text;

import defpackage.fe;
import defpackage.jb;
import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Regex implements Serializable {
    public final Pattern j;

    public Regex(String str, int i) {
        RegexOption[] regexOptionArr = RegexOption.j;
        str.getClass();
        Pattern compile = Pattern.compile(str, 66);
        compile.getClass();
        this.j = compile;
    }

    public static MatchResult a(Regex regex, String str) {
        regex.getClass();
        str.getClass();
        Matcher matcher = regex.j.matcher(str);
        matcher.getClass();
        if (!matcher.find(0)) {
            return null;
        }
        return new MatcherMatchResult(matcher, str);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [kotlin.text.a] */
    public static Sequence b(final Regex regex, final String str) {
        regex.getClass();
        str.getClass();
        if (str.length() >= 0) {
            return SequencesKt.d(new Function0() { // from class: kotlin.text.a
                @Override // kotlin.jvm.functions.Function0
                public final Object a() {
                    Regex regex2 = Regex.this;
                    regex2.getClass();
                    CharSequence charSequence = str;
                    charSequence.getClass();
                    Matcher matcher = regex2.j.matcher(charSequence);
                    matcher.getClass();
                    if (!matcher.find(0)) {
                        return null;
                    }
                    return new MatcherMatchResult(matcher, charSequence);
                }
            }, Regex$findAll$2.r);
        }
        fe.k(str.length(), jb.j("Start index out of bounds: ", 0, ", input length: "));
        return null;
    }

    public final MatchResult c(String str) {
        str.getClass();
        Matcher matcher = this.j.matcher(str);
        matcher.getClass();
        if (!matcher.matches()) {
            return null;
        }
        return new MatcherMatchResult(matcher, str);
    }

    public final boolean d(CharSequence charSequence) {
        charSequence.getClass();
        return this.j.matcher(charSequence).matches();
    }

    public final String e(String str, Function1 function1) {
        MatchResult matcherMatchResult;
        str.getClass();
        Matcher matcher = this.j.matcher(str);
        matcher.getClass();
        int i = 0;
        if (!matcher.find(0)) {
            matcherMatchResult = null;
        } else {
            matcherMatchResult = new MatcherMatchResult(matcher, str);
        }
        if (matcherMatchResult == null) {
            return str.toString();
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        do {
            MatcherMatchResult matcherMatchResult2 = (MatcherMatchResult) matcherMatchResult;
            sb.append((CharSequence) str, i, matcherMatchResult2.b().j);
            sb.append((CharSequence) function1.b(matcherMatchResult));
            i = matcherMatchResult2.b().k + 1;
            matcherMatchResult = matcherMatchResult2.next();
            if (i >= length) {
                break;
            }
        } while (matcherMatchResult != null);
        if (i < length) {
            sb.append((CharSequence) str, i, length);
        }
        return sb.toString();
    }

    public final String toString() {
        String pattern = this.j.toString();
        pattern.getClass();
        return pattern;
    }

    public Regex(String str) {
        str.getClass();
        Pattern compile = Pattern.compile(str);
        compile.getClass();
        this.j = compile;
    }
}
