package androidx.lifecycle;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.k8;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Lifecycle {
    public AtomicReference a;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Event {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Event[] $VALUES;
        public static final Companion Companion;
        public static final Event ON_ANY;
        public static final Event ON_CREATE;
        public static final Event ON_DESTROY;
        public static final Event ON_PAUSE;
        public static final Event ON_RESUME;
        public static final Event ON_START;
        public static final Event ON_STOP;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Companion {
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[Event.values().length];
                try {
                    iArr[Event.ON_CREATE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Event.ON_STOP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[Event.ON_START.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[Event.ON_PAUSE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[Event.ON_RESUME.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[Event.ON_DESTROY.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[Event.ON_ANY.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                a = iArr;
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.lifecycle.Lifecycle$Event] */
        /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, androidx.lifecycle.Lifecycle$Event$Companion] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.lifecycle.Lifecycle$Event] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.lifecycle.Lifecycle$Event] */
        /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.lifecycle.Lifecycle$Event] */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, androidx.lifecycle.Lifecycle$Event] */
        /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, androidx.lifecycle.Lifecycle$Event] */
        /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Enum, androidx.lifecycle.Lifecycle$Event] */
        static {
            ?? r0 = new Enum("ON_CREATE", 0);
            ON_CREATE = r0;
            ?? r1 = new Enum("ON_START", 1);
            ON_START = r1;
            ?? r2 = new Enum("ON_RESUME", 2);
            ON_RESUME = r2;
            ?? r3 = new Enum("ON_PAUSE", 3);
            ON_PAUSE = r3;
            ?? r4 = new Enum("ON_STOP", 4);
            ON_STOP = r4;
            ?? r5 = new Enum("ON_DESTROY", 5);
            ON_DESTROY = r5;
            ?? r6 = new Enum("ON_ANY", 6);
            ON_ANY = r6;
            Event[] eventArr = {r0, r1, r2, r3, r4, r5, r6};
            $VALUES = eventArr;
            $ENTRIES = EnumEntriesKt.a(eventArr);
            Companion = new Object();
        }

        public static Event valueOf(String str) {
            return (Event) Enum.valueOf(Event.class, str);
        }

        public static Event[] values() {
            return (Event[]) $VALUES.clone();
        }

        public final State a() {
            switch (WhenMappings.a[ordinal()]) {
                case 1:
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    return State.l;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    return State.m;
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    return State.n;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    return State.j;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    throw new IllegalArgumentException(this + " has no target state");
                default:
                    k8.e();
                    return null;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class State {
        public static final State j;
        public static final State k;
        public static final State l;
        public static final State m;
        public static final State n;
        public static final /* synthetic */ State[] o;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.lifecycle.Lifecycle$State, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.lifecycle.Lifecycle$State, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r2v2, types: [androidx.lifecycle.Lifecycle$State, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r3v2, types: [androidx.lifecycle.Lifecycle$State, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r4v2, types: [androidx.lifecycle.Lifecycle$State, java.lang.Enum] */
        static {
            ?? r0 = new Enum("DESTROYED", 0);
            j = r0;
            ?? r1 = new Enum("INITIALIZED", 1);
            k = r1;
            ?? r2 = new Enum("CREATED", 2);
            l = r2;
            ?? r3 = new Enum("STARTED", 3);
            m = r3;
            ?? r4 = new Enum("RESUMED", 4);
            n = r4;
            State[] stateArr = {r0, r1, r2, r3, r4};
            o = stateArr;
            EnumEntriesKt.a(stateArr);
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) o.clone();
        }
    }

    public abstract void a(LifecycleObserver lifecycleObserver);

    public abstract void b(LifecycleObserver lifecycleObserver);
}
