package coil3.fetch;

import coil3.RealImageLoader;
import coil3.Uri;
import coil3.decode.DataSource;
import coil3.decode.SourceImageSource;
import coil3.fetch.Fetcher;
import coil3.request.Options;
import defpackage.jb;
import defpackage.k8;
import defpackage.q;
import defpackage.u2;
import kotlin.collections.AbstractList;
import kotlin.coroutines.Continuation;
import kotlin.io.encoding.Base64;
import kotlin.io.encoding.Base64Kt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DataUriFetcher implements Fetcher {
    public final Uri a;
    public final Options b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Factory implements Fetcher.Factory<Uri> {
        @Override // coil3.fetch.Fetcher.Factory
        public final Fetcher a(Object obj, Options options, RealImageLoader realImageLoader) {
            Uri uri = (Uri) obj;
            if (!Intrinsics.a(uri.c, "data")) {
                return null;
            }
            return new DataUriFetcher(uri, options);
        }
    }

    public DataUriFetcher(Uri uri, Options options) {
        this.a = uri;
        this.b = options;
    }

    /* JADX WARN: Type inference failed for: r2v10, types: [okio.BufferedSource, okio.Buffer, java.lang.Object] */
    @Override // coil3.fetch.Fetcher
    public final Object a(Continuation continuation) {
        int i;
        int i2;
        int i3;
        int[] iArr;
        byte[] bArr;
        int i4;
        int i5;
        int i6;
        int i7;
        Uri uri = this.a;
        String str = uri.a;
        String str2 = uri.a;
        int i8 = 0;
        int r = StringsKt.r(str, ";base64,", 0, false, 6);
        if (r != -1) {
            int q = StringsKt.q(str2, ':', 0, 6);
            if (q != -1) {
                int i9 = 1;
                String substring = str2.substring(q + 1, r);
                Base64.Default r9 = Base64.c;
                int i10 = r + 8;
                int length = str2.length();
                r9.getClass();
                boolean z = r9.b;
                AbstractList.Companion.a(i10, length, str2.length());
                byte[] bytes = str2.substring(i10, length).getBytes(Charsets.c);
                bytes.getClass();
                int length2 = bytes.length;
                AbstractList.Companion.a(0, length2, bytes.length);
                int i11 = -2;
                if (length2 == 0) {
                    i = 1;
                    i3 = 0;
                } else if (length2 != 1) {
                    if (z) {
                        i2 = length2;
                        int i12 = 0;
                        while (true) {
                            i = i9;
                            if (i12 >= length2) {
                                break;
                            }
                            int i13 = Base64Kt.a[bytes[i12] & 255];
                            if (i13 < 0) {
                                if (i13 == -2) {
                                    i2 -= length2 - i12;
                                    break;
                                }
                                i2--;
                            }
                            i12++;
                            i9 = i;
                        }
                    } else {
                        i = 1;
                        if (bytes[length2 - 1] == 61) {
                            i2 = length2 - 1;
                            if (bytes[length2 - 2] == 61) {
                                i2 = length2 - 2;
                            }
                        } else {
                            i2 = length2;
                        }
                    }
                    i3 = (int) ((i2 * 6) / 8);
                } else {
                    u2.g(q.g(length2, "Input should have at least 2 symbols for Base64 decoding, startIndex: 0, endIndex: "));
                    return null;
                }
                byte[] bArr2 = new byte[i3];
                if (r9.a) {
                    iArr = Base64Kt.b;
                } else {
                    iArr = Base64Kt.a;
                }
                int i14 = -8;
                int i15 = 0;
                int i16 = 0;
                int i17 = 8;
                int i18 = -8;
                while (true) {
                    if (i8 < length2) {
                        if (i18 == i14 && (i7 = i8 + 3) < length2) {
                            int i19 = iArr[bytes[i8] & 255];
                            bArr = bytes;
                            int i20 = i8 + 4;
                            int i21 = (iArr[bArr[i8 + 2] & 255] << 6) | (iArr[bytes[i8 + 1] & 255] << 12) | (i19 << 18) | iArr[bArr[i7] & 255];
                            if (i21 >= 0) {
                                bArr2[i15] = (byte) (i21 >> 16);
                                int i22 = i15 + 2;
                                bArr2[i15 + 1] = (byte) (i21 >> 8);
                                i15 += 3;
                                bArr2[i22] = (byte) i21;
                                bytes = bArr;
                                i8 = i20;
                                i11 = -2;
                                i14 = -8;
                            }
                        } else {
                            bArr = bytes;
                        }
                        int i23 = bArr[i8] & 255;
                        int i24 = iArr[i23];
                        if (i24 < 0) {
                            if (i24 == -2) {
                                if (i18 != -8) {
                                    if (i18 != -6) {
                                        if (i18 != -4) {
                                            if (i18 != -2) {
                                                u2.l("Unreachable");
                                                return null;
                                            }
                                        } else {
                                            Base64.PaddingOption[] paddingOptionArr = Base64.PaddingOption.j;
                                            int i25 = i8 + 1;
                                            if (z) {
                                                while (i25 < length2) {
                                                    if (Base64Kt.a[bArr[i25] & 255] != -1) {
                                                        break;
                                                    }
                                                    i25++;
                                                }
                                            }
                                            if (i25 != length2 && bArr[i25] == 61) {
                                                i6 = i25 + 1;
                                                i4 = i6;
                                                i11 = -2;
                                                i5 = i;
                                            } else {
                                                u2.g(q.g(i25, "Missing one pad character at index "));
                                                return null;
                                            }
                                        }
                                    } else {
                                        Base64.PaddingOption[] paddingOptionArr2 = Base64.PaddingOption.j;
                                    }
                                    i6 = i8 + 1;
                                    i4 = i6;
                                    i11 = -2;
                                    i5 = i;
                                } else {
                                    u2.g(q.g(i8, "Redundant pad character at index "));
                                    return null;
                                }
                            } else if (z) {
                                i8++;
                                bytes = bArr;
                                i11 = -2;
                                i14 = -8;
                            } else {
                                char c = (char) i23;
                                CharsKt.b(i17);
                                String num = Integer.toString(i23, i17);
                                num.getClass();
                                throw new IllegalArgumentException("Invalid symbol '" + c + "'(" + num + ") at index " + i8);
                            }
                        } else {
                            i8++;
                            i16 = (i16 << 6) | i24;
                            int i26 = i18 + 6;
                            if (i26 >= 0) {
                                bArr2[i15] = (byte) (i16 >>> i26);
                                i16 &= (i << i26) - 1;
                                i18 -= 2;
                                i15++;
                            } else {
                                i18 = i26;
                            }
                            bytes = bArr;
                            i11 = -2;
                            i14 = -8;
                            i17 = 8;
                        }
                    } else {
                        bArr = bytes;
                        i4 = i8;
                        i5 = 0;
                        break;
                    }
                }
                if (i18 != i11) {
                    if (i18 != -8 && i5 == 0) {
                        Base64.PaddingOption[] paddingOptionArr3 = Base64.PaddingOption.j;
                        u2.g("The padding option is set to PRESENT, but the input is not properly padded");
                        return null;
                    }
                    if (i16 == 0) {
                        if (z) {
                            while (i4 < length2) {
                                if (Base64Kt.a[bArr[i4] & 255] != -1) {
                                    break;
                                }
                                i4++;
                            }
                        }
                        if (i4 >= length2) {
                            if (i15 == i3) {
                                ?? obj = new Object();
                                obj.X(i3, bArr2);
                                return new SourceFetchResult(new SourceImageSource(obj, this.b.f, null), substring, DataSource.k);
                            }
                            u2.l("Check failed.");
                            return null;
                        }
                        int i27 = bArr[i4] & 255;
                        StringBuilder sb = new StringBuilder("Symbol '");
                        sb.append((char) i27);
                        sb.append("'(");
                        CharsKt.b(8);
                        String num2 = Integer.toString(i27, 8);
                        num2.getClass();
                        sb.append(num2);
                        sb.append(") at index ");
                        u2.g(jb.i(sb, i4 - 1, " is prohibited after the pad character"));
                        return null;
                    }
                    u2.g("The pad bits must be zeros");
                    return null;
                }
                u2.g("The last unit of input does not have enough bits");
                return null;
            }
            k8.s(uri, "invalid data uri: ");
            return null;
        }
        k8.s(uri, "invalid data uri: ");
        return null;
    }
}
