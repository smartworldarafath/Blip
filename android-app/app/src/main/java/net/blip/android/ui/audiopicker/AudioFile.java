package net.blip.android.ui.audiopicker;

import android.net.Uri;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AudioFile {
    public final String a;
    public final String b;
    public final Integer c;
    public final Uri d;

    public AudioFile(String str, String str2, Integer num, Uri uri) {
        this.a = str;
        this.b = str2;
        this.c = num;
        this.d = uri;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof AudioFile) {
                AudioFile audioFile = (AudioFile) obj;
                if (!Intrinsics.a(this.a, audioFile.a) || !Intrinsics.a(this.b, audioFile.b) || !Intrinsics.a(this.c, audioFile.c) || !this.d.equals(audioFile.d)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int i = 0;
        String str = this.a;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i2 = hashCode * 31;
        String str2 = this.b;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        Integer num = this.c;
        if (num != null) {
            i = num.hashCode();
        }
        return this.d.hashCode() + ((i3 + i) * 31);
    }

    public final String toString() {
        StringBuilder o = q.o("AudioFile(title=", this.a, ", artist=", this.b, ", duration=");
        o.append(this.c);
        o.append(", contentUri=");
        o.append(this.d);
        o.append(")");
        return o.toString();
    }
}
