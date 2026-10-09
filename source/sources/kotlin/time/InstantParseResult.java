package kotlin.time;

import kotlin.time.Instant;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface InstantParseResult {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Failure implements InstantParseResult {
        public final String a;
        public final CharSequence b;

        public Failure(CharSequence charSequence, String str) {
            charSequence.getClass();
            this.a = str;
            this.b = charSequence;
        }

        @Override // kotlin.time.InstantParseResult
        public final Instant toInstant() {
            throw new IllegalArgumentException(this.a + " when parsing an Instant from \"" + InstantKt.e(this.b, 64) + '\"');
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Success implements InstantParseResult {
        public final long a;
        public final int b;

        public Success(int i, long j) {
            this.a = j;
            this.b = i;
        }

        @Override // kotlin.time.InstantParseResult
        public final Instant toInstant() {
            long j = Instant.l.j;
            long j2 = this.a;
            if (j2 >= j && j2 <= Instant.m.j) {
                return Instant.Companion.a(this.b, j2);
            }
            throw new IllegalArgumentException("The parsed date is outside the range representable by Instant (Unix epoch second " + j2 + ')');
        }
    }

    Instant toInstant();
}
