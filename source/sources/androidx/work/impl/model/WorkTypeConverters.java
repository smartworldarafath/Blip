package androidx.work.impl.model;

import android.net.Uri;
import android.os.Build;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo$State;
import androidx.work.impl.utils.NetworkRequest28;
import androidx.work.impl.utils.NetworkRequestCompat;
import defpackage.jb;
import defpackage.k8;
import defpackage.u2;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.LinkedHashSet;
import kotlin.io.CloseableKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class WorkTypeConverters {
    public static final LinkedHashSet a(byte[] bArr) {
        bArr.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (bArr.length == 0) {
            return linkedHashSet;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            try {
                ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
                try {
                    int readInt = objectInputStream.readInt();
                    for (int i = 0; i < readInt; i++) {
                        Uri parse = Uri.parse(objectInputStream.readUTF());
                        boolean readBoolean = objectInputStream.readBoolean();
                        parse.getClass();
                        linkedHashSet.add(new Constraints.ContentUriTrigger(readBoolean, parse));
                    }
                    objectInputStream.close();
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.a(objectInputStream, th);
                        throw th2;
                    }
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            byteArrayInputStream.close();
            return linkedHashSet;
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                CloseableKt.a(byteArrayInputStream, th3);
                throw th4;
            }
        }
    }

    public static final BackoffPolicy b(int i) {
        if (i != 0) {
            if (i == 1) {
                return BackoffPolicy.k;
            }
            u2.g(jb.d("Could not convert ", i, " to BackoffPolicy"));
            return null;
        }
        return BackoffPolicy.j;
    }

    public static final NetworkType c(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (Build.VERSION.SDK_INT >= 30 && i == 5) {
                                return NetworkType.o;
                            }
                            u2.g(jb.d("Could not convert ", i, " to NetworkType"));
                            return null;
                        }
                        return NetworkType.n;
                    }
                    return NetworkType.m;
                }
                return NetworkType.l;
            }
            return NetworkType.k;
        }
        return NetworkType.j;
    }

    public static final OutOfQuotaPolicy d(int i) {
        if (i != 0) {
            if (i == 1) {
                return OutOfQuotaPolicy.k;
            }
            u2.g(jb.d("Could not convert ", i, " to OutOfQuotaPolicy"));
            return null;
        }
        return OutOfQuotaPolicy.j;
    }

    public static final WorkInfo$State e(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i == 5) {
                                return WorkInfo$State.o;
                            }
                            u2.g(jb.d("Could not convert ", i, " to State"));
                            return null;
                        }
                        return WorkInfo$State.n;
                    }
                    return WorkInfo$State.m;
                }
                return WorkInfo$State.l;
            }
            return WorkInfo$State.k;
        }
        return WorkInfo$State.j;
    }

    public static final int f(WorkInfo$State workInfo$State) {
        workInfo$State.getClass();
        int ordinal = workInfo$State.ordinal();
        if (ordinal == 0) {
            return 0;
        }
        int i = 1;
        if (ordinal != 1) {
            i = 2;
            if (ordinal != 2) {
                i = 3;
                if (ordinal != 3) {
                    i = 4;
                    if (ordinal != 4) {
                        if (ordinal == 5) {
                            return 5;
                        }
                        k8.e();
                        return 0;
                    }
                }
            }
        }
        return i;
    }

    public static final NetworkRequestCompat g(byte[] bArr) {
        bArr.getClass();
        if (bArr.length == 0) {
            return new NetworkRequestCompat(null);
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
            try {
                int readInt = objectInputStream.readInt();
                int[] iArr = new int[readInt];
                for (int i = 0; i < readInt; i++) {
                    iArr[i] = objectInputStream.readInt();
                }
                int readInt2 = objectInputStream.readInt();
                int[] iArr2 = new int[readInt2];
                for (int i2 = 0; i2 < readInt2; i2++) {
                    iArr2[i2] = objectInputStream.readInt();
                }
                NetworkRequestCompat a = NetworkRequest28.a(iArr2, iArr);
                objectInputStream.close();
                byteArrayInputStream.close();
                return a;
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.a(byteArrayInputStream, th);
                throw th2;
            }
        }
    }
}
