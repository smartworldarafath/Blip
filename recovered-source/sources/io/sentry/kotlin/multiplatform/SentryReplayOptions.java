package io.sentry.kotlin.multiplatform;

import defpackage.jb;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryReplayOptions {
    public boolean a;
    public boolean b;
    public Quality c;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Quality {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Quality[] $VALUES;
        private final int bitRate;
        private final float sizeScale;
        public static final Quality LOW = new Quality("LOW", 0, 0.8f, 50000);
        public static final Quality MEDIUM = new Quality("MEDIUM", 1, 1.0f, 75000);
        public static final Quality HIGH = new Quality("HIGH", 2, 1.0f, 100000);

        private static final /* synthetic */ Quality[] $values() {
            return new Quality[]{LOW, MEDIUM, HIGH};
        }

        static {
            Quality[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.a($values);
        }

        private Quality(String str, int i, float f, int i2) {
            this.sizeScale = f;
            this.bitRate = i2;
        }

        public static EnumEntries<Quality> getEntries() {
            return $ENTRIES;
        }

        public static Quality valueOf(String str) {
            return (Quality) Enum.valueOf(Quality.class, str);
        }

        public static Quality[] values() {
            return (Quality[]) $VALUES.clone();
        }

        public final int getBitRate() {
            return this.bitRate;
        }

        public final float getSizeScale() {
            return this.sizeScale;
        }
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SentryReplayOptions) {
                SentryReplayOptions sentryReplayOptions = (SentryReplayOptions) obj;
                if (this.a != sentryReplayOptions.a || this.b != sentryReplayOptions.b || this.c != sentryReplayOptions.c) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.c.hashCode() + jb.b(Boolean.hashCode(this.a) * 31, 31, this.b);
    }

    public final String toString() {
        return "SentryReplayOptions(sessionSampleRate=null, onErrorSampleRate=null, maskAllText=" + this.a + ", maskAllImages=" + this.b + ", quality=" + this.c + ')';
    }
}
