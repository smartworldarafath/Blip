package net.blip.libblip;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.k8;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Peer implements Parcelable {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Device extends Peer {
        public static final Parcelable.Creator<Device> CREATOR = new Object();
        public final net.blip.libblip.Device j;
        public final String k;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Creator implements Parcelable.Creator<Device> {
            @Override // android.os.Parcelable.Creator
            public final Device createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Device((net.blip.libblip.Device) parcel.readSerializable(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final Device[] newArray(int i) {
                return new Device[i];
            }
        }

        public Device(net.blip.libblip.Device device, String str) {
            device.getClass();
            str.getClass();
            this.j = device;
            this.k = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Device)) {
                return false;
            }
            Device device = (Device) obj;
            if (Intrinsics.a(this.j, device.j) && Intrinsics.a(this.k, device.k)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.k.hashCode() + (this.j.hashCode() * 31);
        }

        public final String toString() {
            return "Device(device=" + this.j + ", userId=" + this.k + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeSerializable(this.j);
            parcel.writeString(this.k);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class User extends Peer {
        public static final Parcelable.Creator<User> CREATOR = new Object();
        public final net.blip.libblip.User j;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Creator implements Parcelable.Creator<User> {
            @Override // android.os.Parcelable.Creator
            public final User createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new User((net.blip.libblip.User) parcel.readSerializable());
            }

            @Override // android.os.Parcelable.Creator
            public final User[] newArray(int i) {
                return new User[i];
            }
        }

        public User(net.blip.libblip.User user) {
            user.getClass();
            this.j = user;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof User) && Intrinsics.a(this.j, ((User) obj).j)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.j.hashCode();
        }

        public final String toString() {
            return "User(user=" + this.j + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeSerializable(this.j);
        }
    }

    public final String a() {
        if (this instanceof User) {
            net.blip.libblip.User user = ((User) this).j;
            user.getClass();
            return StringsKt.E(user.n, '*', (char) 8226);
        }
        if (this instanceof Device) {
            net.blip.libblip.Device device = ((Device) this).j;
            device.getClass();
            boolean z = device.r;
            DeviceKind deviceKind = device.n;
            if (z) {
                return "This ".concat(Device_DerivedKt.b(deviceKind));
            }
            return "Your ".concat(Device_DerivedKt.b(deviceKind));
        }
        k8.e();
        return null;
    }

    public final String b() {
        if (this instanceof User) {
            return User_DerivedKt.a(((User) this).j);
        }
        if (this instanceof Device) {
            return Device_DerivedKt.a(((Device) this).j);
        }
        k8.e();
        return null;
    }

    public final PeerId c() {
        if (this instanceof User) {
            return new PeerId(((User) this).j.m, 6, (String) null);
        }
        if (this instanceof Device) {
            Device device = (Device) this;
            String str = device.j.m;
            return new PeerId(device.k, 4, str);
        }
        k8.e();
        return null;
    }

    public final String d() {
        if (this instanceof User) {
            return User_DerivedKt.c(((User) this).j);
        }
        if (this instanceof Device) {
            return Device_DerivedKt.a(((Device) this).j);
        }
        k8.e();
        return null;
    }

    public final net.blip.libblip.User e() {
        User user;
        if (this instanceof User) {
            user = (User) this;
        } else {
            user = null;
        }
        if (user == null) {
            return null;
        }
        return user.j;
    }
}
