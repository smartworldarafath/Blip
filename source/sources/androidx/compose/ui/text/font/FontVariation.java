package androidx.compose.ui.text.font;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.jb;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FontVariation {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Setting {
        float a();

        String b();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SettingInt implements Setting {
        public final int a;

        public SettingInt(int i) {
            this.a = i;
        }

        @Override // androidx.compose.ui.text.font.FontVariation.Setting
        public final float a() {
            return this.a;
        }

        @Override // androidx.compose.ui.text.font.FontVariation.Setting
        public final String b() {
            return "wght";
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof SettingInt) && this.a == ((SettingInt) obj).a) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return 113071012 + this.a;
        }

        public final String toString() {
            return jb.d("FontVariation.Setting(axisName='wght', value=", this.a, ")");
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Settings {
        public final List a;

        public Settings(Setting... settingArr) {
            for (Setting setting : settingArr) {
                String b = setting.b();
                int i = 0;
                for (Setting setting2 : settingArr) {
                    if (Intrinsics.a(setting2.b(), b)) {
                        i++;
                    }
                }
                if (i != 1) {
                    ArrayList arrayList = new ArrayList();
                    for (Setting setting3 : settingArr) {
                        if (Intrinsics.a(setting3.b(), b)) {
                            arrayList.add(setting3);
                        }
                    }
                    InlineClassHelperKt.a("'" + b + "' must be unique. Actual [" + arrayList + "]");
                }
            }
            this.a = ArraysKt.v(settingArr);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Settings)) {
                return false;
            }
            if (Intrinsics.a(this.a, ((Settings) obj).a)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return "Settings(settings=" + this.a + ")";
        }
    }

    public static Setting a(int i) {
        if (1 > i || i >= 1001) {
            InlineClassHelperKt.a("'wght' value must be in [1, 1000]. Actual: " + i);
        }
        return new SettingInt(i);
    }
}
