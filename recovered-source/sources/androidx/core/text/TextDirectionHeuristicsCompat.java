package androidx.core.text;

import defpackage.fe;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TextDirectionHeuristicsCompat {
    public static final TextDirectionHeuristicCompat a = new TextDirectionHeuristicInternal(null, false);
    public static final TextDirectionHeuristicCompat b = new TextDirectionHeuristicInternal(null, true);
    public static final TextDirectionHeuristicCompat c;
    public static final TextDirectionHeuristicCompat d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class FirstStrong implements TextDirectionAlgorithm {
        public static final FirstStrong a = new Object();

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionAlgorithm
        public final int a(CharSequence charSequence, int i) {
            int i2 = 2;
            for (int i3 = 0; i3 < i && i2 == 2; i3++) {
                byte directionality = Character.getDirectionality(charSequence.charAt(i3));
                TextDirectionHeuristicCompat textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.a;
                if (directionality != 0) {
                    if (directionality != 1 && directionality != 2) {
                        switch (directionality) {
                            case 14:
                            case 15:
                                break;
                            case 16:
                            case 17:
                                break;
                            default:
                                i2 = 2;
                                break;
                        }
                    }
                    i2 = 0;
                }
                i2 = 1;
            }
            return i2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface TextDirectionAlgorithm {
        int a(CharSequence charSequence, int i);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class TextDirectionHeuristicImpl implements TextDirectionHeuristicCompat {
        public final TextDirectionAlgorithm a;

        public TextDirectionHeuristicImpl(TextDirectionAlgorithm textDirectionAlgorithm) {
            this.a = textDirectionAlgorithm;
        }

        @Override // androidx.core.text.TextDirectionHeuristicCompat
        public final boolean a(CharSequence charSequence, int i) {
            if (charSequence != null && i >= 0 && charSequence.length() - i >= 0) {
                TextDirectionAlgorithm textDirectionAlgorithm = this.a;
                if (textDirectionAlgorithm == null) {
                    return b();
                }
                int a = textDirectionAlgorithm.a(charSequence, i);
                if (a == 0) {
                    return true;
                }
                if (a == 1) {
                    return false;
                }
                return b();
            }
            fe.h();
            return false;
        }

        public abstract boolean b();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class TextDirectionHeuristicInternal extends TextDirectionHeuristicImpl {
        public final boolean b;

        public TextDirectionHeuristicInternal(FirstStrong firstStrong, boolean z) {
            super(firstStrong);
            this.b = z;
        }

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionHeuristicImpl
        public final boolean b() {
            return this.b;
        }
    }

    static {
        FirstStrong firstStrong = FirstStrong.a;
        c = new TextDirectionHeuristicInternal(firstStrong, false);
        d = new TextDirectionHeuristicInternal(firstStrong, true);
    }
}
