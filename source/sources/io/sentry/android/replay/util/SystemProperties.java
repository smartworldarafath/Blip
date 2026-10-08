package io.sentry.android.replay.util;

import android.os.Build;
import defpackage.k8;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SystemProperties {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Property {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Property[] $VALUES;
        public static final Property SOC_MODEL = new Property("SOC_MODEL", 0);
        public static final Property SOC_MANUFACTURER = new Property("SOC_MANUFACTURER", 1);

        private static final /* synthetic */ Property[] $values() {
            return new Property[]{SOC_MODEL, SOC_MANUFACTURER};
        }

        static {
            Property[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.a($values);
        }

        private Property(String str, int i) {
        }

        public static EnumEntries<Property> getEntries() {
            return $ENTRIES;
        }

        public static Property valueOf(String str) {
            return (Property) Enum.valueOf(Property.class, str);
        }

        public static Property[] values() {
            return (Property[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Property.values().length];
            try {
                iArr[Property.SOC_MODEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Property.SOC_MANUFACTURER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public static String a(Property property) {
        String str;
        property.getClass();
        if (Build.VERSION.SDK_INT >= 31) {
            int i = WhenMappings.a[property.ordinal()];
            if (i == 1) {
                str = Build.SOC_MODEL;
            } else if (i == 2) {
                str = Build.SOC_MANUFACTURER;
            } else {
                k8.e();
                return null;
            }
            str.getClass();
            return str;
        }
        return "";
    }
}
