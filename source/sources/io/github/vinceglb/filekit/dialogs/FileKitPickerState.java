package io.github.vinceglb.filekit.dialogs;

import defpackage.jb;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FileKitPickerState<T> {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Cancelled extends FileKitPickerState {
        public static final Cancelled a = new Object();

        public final boolean equals(Object obj) {
            if (this == obj || (obj instanceof Cancelled)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return -1186994034;
        }

        public final String toString() {
            return "Cancelled";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Completed<T> extends FileKitPickerState<T> {
        public final Object a;

        public Completed(Object obj) {
            this.a = obj;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Completed) && Intrinsics.a(this.a, ((Completed) obj).a)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            Object obj = this.a;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        public final String toString() {
            return "Completed(result=" + this.a + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Progress<T> extends FileKitPickerState<T> {
        public final Object a;
        public final int b;

        public Progress(int i, List list) {
            this.a = list;
            this.b = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Progress)) {
                return false;
            }
            Progress progress = (Progress) obj;
            if (Intrinsics.a(this.a, progress.a) && this.b == progress.b) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            int hashCode;
            Object obj = this.a;
            if (obj == null) {
                hashCode = 0;
            } else {
                hashCode = obj.hashCode();
            }
            return Integer.hashCode(this.b) + (hashCode * 31);
        }

        public final String toString() {
            return "Progress(processed=" + this.a + ", total=" + this.b + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Started extends FileKitPickerState {
        public final int a;

        public Started(int i) {
            this.a = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Started) && this.a == ((Started) obj).a) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.a);
        }

        public final String toString() {
            return jb.d("Started(total=", this.a, ")");
        }
    }
}
