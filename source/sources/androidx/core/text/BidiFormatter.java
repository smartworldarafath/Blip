package androidx.core.text;

import android.text.SpannableStringBuilder;
import androidx.core.text.TextDirectionHeuristicsCompat;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BidiFormatter {
    public static final String b;
    public static final String c;
    public static final BidiFormatter d;
    public static final BidiFormatter e;
    public final boolean a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class DirectionalityEstimator {
        public static final byte[] e = new byte[1792];
        public final CharSequence a;
        public final int b;
        public int c;
        public char d;

        static {
            for (int i = 0; i < 1792; i++) {
                e[i] = Character.getDirectionality(i);
            }
        }

        public DirectionalityEstimator(CharSequence charSequence) {
            this.a = charSequence;
            this.b = charSequence.length();
        }

        public final byte a() {
            int i = this.c - 1;
            CharSequence charSequence = this.a;
            char charAt = charSequence.charAt(i);
            this.d = charAt;
            boolean isLowSurrogate = Character.isLowSurrogate(charAt);
            int i2 = this.c;
            if (isLowSurrogate) {
                int codePointBefore = Character.codePointBefore(charSequence, i2);
                this.c -= Character.charCount(codePointBefore);
                return Character.getDirectionality(codePointBefore);
            }
            this.c = i2 - 1;
            char c = this.d;
            if (c < 1792) {
                return e[c];
            }
            return Character.getDirectionality(c);
        }
    }

    static {
        TextDirectionHeuristicCompat textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.a;
        b = Character.toString((char) 8206);
        c = Character.toString((char) 8207);
        d = new BidiFormatter(false);
        e = new BidiFormatter(true);
    }

    public BidiFormatter(boolean z) {
        TextDirectionHeuristicCompat textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.a;
        this.a = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0084, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x006d, code lost:
    
        if (r1 != 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0070, code lost:
    
        if (r2 == 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0072, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0075, code lost:
    
        if (r0.c <= 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x007b, code lost:
    
        switch(r0.a()) {
            case 14: goto L66;
            case 15: goto L66;
            case 16: goto L65;
            case 17: goto L65;
            case 18: goto L64;
            default: goto L70;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x007f, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0082, code lost:
    
        if (r1 != r3) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0085, code lost:
    
        r3 = r3 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0088, code lost:
    
        if (r1 != r3) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x008b, code lost:
    
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int a(CharSequence charSequence) {
        byte directionality;
        DirectionalityEstimator directionalityEstimator = new DirectionalityEstimator(charSequence);
        directionalityEstimator.c = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = directionalityEstimator.c;
            if (i4 < directionalityEstimator.b && i == 0) {
                CharSequence charSequence2 = directionalityEstimator.a;
                char charAt = charSequence2.charAt(i4);
                directionalityEstimator.d = charAt;
                boolean isHighSurrogate = Character.isHighSurrogate(charAt);
                int i5 = directionalityEstimator.c;
                if (isHighSurrogate) {
                    int codePointAt = Character.codePointAt(charSequence2, i5);
                    directionalityEstimator.c = Character.charCount(codePointAt) + directionalityEstimator.c;
                    directionality = Character.getDirectionality(codePointAt);
                } else {
                    directionalityEstimator.c = i5 + 1;
                    char c2 = directionalityEstimator.d;
                    if (c2 < 1792) {
                        directionality = DirectionalityEstimator.e[c2];
                    } else {
                        directionality = Character.getDirectionality(c2);
                    }
                }
                if (directionality != 0) {
                    if (directionality != 1 && directionality != 2) {
                        if (directionality != 9) {
                            switch (directionality) {
                                case 14:
                                case 15:
                                    i3++;
                                    i2 = -1;
                                    continue;
                                case 16:
                                case 17:
                                    i3++;
                                    i2 = 1;
                                    continue;
                                case 18:
                                    i3--;
                                    i2 = 0;
                                    continue;
                            }
                        }
                    } else if (i3 == 0) {
                    }
                } else if (i3 == 0) {
                }
                i = i3;
            }
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0034, code lost:
    
        return 1;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:33:0x0020. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int b(CharSequence charSequence) {
        DirectionalityEstimator directionalityEstimator = new DirectionalityEstimator(charSequence);
        directionalityEstimator.c = directionalityEstimator.b;
        int i = 0;
        while (true) {
            int i2 = i;
            while (directionalityEstimator.c > 0) {
                byte a = directionalityEstimator.a();
                if (a != 0) {
                    if (a != 1 && a != 2) {
                        if (a != 9) {
                            switch (a) {
                                case 14:
                                case 15:
                                    if (i2 == i) {
                                        return -1;
                                    }
                                    i--;
                                    break;
                                case 16:
                                case 17:
                                    if (i2 == i) {
                                        break;
                                    }
                                    i--;
                                    break;
                                case 18:
                                    i++;
                                    break;
                                default:
                                    if (i2 != 0) {
                                        break;
                                    } else {
                                        break;
                                    }
                                    break;
                            }
                        } else {
                            continue;
                        }
                    } else if (i != 0) {
                        if (i2 == 0) {
                            break;
                        }
                    }
                } else {
                    if (i == 0) {
                        return -1;
                    }
                    if (i2 == 0) {
                        break;
                    }
                }
            }
            return 0;
        }
    }

    public final SpannableStringBuilder c(CharSequence charSequence) {
        TextDirectionHeuristicCompat textDirectionHeuristicCompat;
        String str;
        TextDirectionHeuristicCompat textDirectionHeuristicCompat2;
        char c2;
        TextDirectionHeuristicCompat textDirectionHeuristicCompat3 = TextDirectionHeuristicsCompat.c;
        if (charSequence == null) {
            return null;
        }
        boolean a = ((TextDirectionHeuristicsCompat.TextDirectionHeuristicImpl) textDirectionHeuristicCompat3).a(charSequence, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (a) {
            textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.b;
        } else {
            textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.a;
        }
        boolean a2 = ((TextDirectionHeuristicsCompat.TextDirectionHeuristicImpl) textDirectionHeuristicCompat).a(charSequence, charSequence.length());
        String str2 = "";
        String str3 = c;
        String str4 = b;
        boolean z = this.a;
        if (!z && (a2 || a(charSequence) == 1)) {
            str = str4;
        } else if (!z || (a2 && a(charSequence) != -1)) {
            str = "";
        } else {
            str = str3;
        }
        spannableStringBuilder.append((CharSequence) str);
        if (a != z) {
            if (a) {
                c2 = 8235;
            } else {
                c2 = 8234;
            }
            spannableStringBuilder.append(c2);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (a) {
            textDirectionHeuristicCompat2 = TextDirectionHeuristicsCompat.b;
        } else {
            textDirectionHeuristicCompat2 = TextDirectionHeuristicsCompat.a;
        }
        boolean a3 = ((TextDirectionHeuristicsCompat.TextDirectionHeuristicImpl) textDirectionHeuristicCompat2).a(charSequence, charSequence.length());
        if (!z && (a3 || b(charSequence) == 1)) {
            str2 = str4;
        } else if (z && (!a3 || b(charSequence) == -1)) {
            str2 = str3;
        }
        spannableStringBuilder.append((CharSequence) str2);
        return spannableStringBuilder;
    }
}
