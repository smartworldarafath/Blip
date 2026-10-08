package io.sentry.android.replay;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.k8;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ReplayLifecycle {
    public volatile ReplayState a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[ReplayState.values().length];
            try {
                iArr[ReplayState.INITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReplayState.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ReplayState.RESUMED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ReplayState.PAUSED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ReplayState.STOPPED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ReplayState.CLOSED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000f. Please report as an issue. */
    public final boolean a(ReplayState replayState) {
        replayState.getClass();
        switch (WhenMappings.a[this.a.ordinal()]) {
            case 1:
                if (replayState == ReplayState.STARTED || replayState == ReplayState.CLOSED) {
                    return true;
                }
                return false;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                if (replayState == ReplayState.PAUSED || replayState == ReplayState.STOPPED || replayState == ReplayState.CLOSED) {
                    return true;
                }
                return false;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                if (replayState == ReplayState.PAUSED || replayState == ReplayState.STOPPED || replayState == ReplayState.CLOSED) {
                    return true;
                }
                return false;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                if (replayState == ReplayState.RESUMED || replayState == ReplayState.STOPPED || replayState == ReplayState.CLOSED) {
                    return true;
                }
                return false;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                if (replayState == ReplayState.STARTED || replayState == ReplayState.CLOSED) {
                    return true;
                }
                return false;
            default:
                k8.e();
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                return false;
        }
    }
}
