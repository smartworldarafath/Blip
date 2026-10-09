package androidx.core.view;

import android.content.ClipData;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.ContentInfo;
import defpackage.o6;
import defpackage.q;
import defpackage.u2;
import java.util.Locale;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ContentInfoCompat {
    public final Compat a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final BuilderCompat a;

        /* JADX WARN: Type inference failed for: r0v1, types: [androidx.core.view.ContentInfoCompat$BuilderCompatImpl, java.lang.Object, androidx.core.view.ContentInfoCompat$BuilderCompat] */
        public Builder(ClipData clipData, int i) {
            if (Build.VERSION.SDK_INT >= 31) {
                this.a = new BuilderCompat31Impl(clipData, i);
                return;
            }
            ?? obj = new Object();
            obj.a = clipData;
            obj.b = i;
            this.a = obj;
        }

        public final ContentInfoCompat a() {
            return this.a.build();
        }

        public final void b(Bundle bundle) {
            this.a.setExtras(bundle);
        }

        public final void c(int i) {
            this.a.b(i);
        }

        public final void d(Uri uri) {
            this.a.a(uri);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface BuilderCompat {
        void a(Uri uri);

        void b(int i);

        ContentInfoCompat build();

        void setExtras(Bundle bundle);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class BuilderCompat31Impl implements BuilderCompat {
        public final ContentInfo.Builder a;

        public BuilderCompat31Impl(ClipData clipData, int i) {
            this.a = o6.n(clipData, i);
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final void a(Uri uri) {
            this.a.setLinkUri(uri);
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final void b(int i) {
            this.a.setFlags(i);
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final ContentInfoCompat build() {
            ContentInfo build;
            build = this.a.build();
            return new ContentInfoCompat(new Compat31Impl(build));
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final void setExtras(Bundle bundle) {
            this.a.setExtras(bundle);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class BuilderCompatImpl implements BuilderCompat {
        public ClipData a;
        public int b;
        public int c;
        public Uri d;
        public Bundle e;

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final void a(Uri uri) {
            this.d = uri;
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final void b(int i) {
            this.c = i;
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final ContentInfoCompat build() {
            return new ContentInfoCompat(new CompatImpl(this));
        }

        @Override // androidx.core.view.ContentInfoCompat.BuilderCompat
        public final void setExtras(Bundle bundle) {
            this.e = bundle;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Compat {
        int b();

        ClipData c();

        ContentInfo d();

        int e();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Compat31Impl implements Compat {
        public final ContentInfo a;

        public Compat31Impl(ContentInfo contentInfo) {
            contentInfo.getClass();
            this.a = o6.o(contentInfo);
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final int b() {
            int flags;
            flags = this.a.getFlags();
            return flags;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final ClipData c() {
            ClipData clip;
            clip = this.a.getClip();
            return clip;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final ContentInfo d() {
            return this.a;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final int e() {
            int source;
            source = this.a.getSource();
            return source;
        }

        public final String toString() {
            return "ContentInfoCompat{" + this.a + "}";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CompatImpl implements Compat {
        public final ClipData a;
        public final int b;
        public final int c;
        public final Uri d;
        public final Bundle e;

        public CompatImpl(BuilderCompatImpl builderCompatImpl) {
            ClipData clipData = builderCompatImpl.a;
            clipData.getClass();
            this.a = clipData;
            int i = builderCompatImpl.b;
            if (i >= 0) {
                if (i <= 5) {
                    this.b = i;
                    int i2 = builderCompatImpl.c;
                    if ((i2 & 1) == i2) {
                        this.c = i2;
                        this.d = builderCompatImpl.d;
                        this.e = builderCompatImpl.e;
                        return;
                    }
                    throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i2) + ", but only 0x" + Integer.toHexString(1) + " are allowed");
                }
                Locale locale = Locale.US;
                u2.g("source is out of range of [0, 5] (too high)");
                throw null;
            }
            Locale locale2 = Locale.US;
            u2.g("source is out of range of [0, 5] (too low)");
            throw null;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final int b() {
            return this.c;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final ClipData c() {
            return this.a;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final ContentInfo d() {
            return null;
        }

        @Override // androidx.core.view.ContentInfoCompat.Compat
        public final int e() {
            return this.b;
        }

        public final String toString() {
            String str;
            String valueOf;
            String str2;
            StringBuilder sb = new StringBuilder("ContentInfoCompat{clip=");
            sb.append(this.a.getDescription());
            sb.append(", source=");
            int i = this.b;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 4) {
                                if (i != 5) {
                                    str = String.valueOf(i);
                                } else {
                                    str = "SOURCE_PROCESS_TEXT";
                                }
                            } else {
                                str = "SOURCE_AUTOFILL";
                            }
                        } else {
                            str = "SOURCE_DRAG_AND_DROP";
                        }
                    } else {
                        str = "SOURCE_INPUT_METHOD";
                    }
                } else {
                    str = "SOURCE_CLIPBOARD";
                }
            } else {
                str = "SOURCE_APP";
            }
            sb.append(str);
            sb.append(", flags=");
            int i2 = this.c;
            if ((i2 & 1) != 0) {
                valueOf = "FLAG_CONVERT_TO_PLAIN_TEXT";
            } else {
                valueOf = String.valueOf(i2);
            }
            sb.append(valueOf);
            String str3 = "";
            Uri uri = this.d;
            if (uri == null) {
                str2 = "";
            } else {
                str2 = ", hasLinkUri(" + uri.toString().length() + ")";
            }
            sb.append(str2);
            if (this.e != null) {
                str3 = ", hasExtras";
            }
            return q.l(sb, str3, "}");
        }
    }

    public ContentInfoCompat(Compat compat) {
        this.a = compat;
    }

    public final ClipData a() {
        return this.a.c();
    }

    public final int b() {
        return this.a.b();
    }

    public final int c() {
        return this.a.e();
    }

    public final String toString() {
        return this.a.toString();
    }
}
