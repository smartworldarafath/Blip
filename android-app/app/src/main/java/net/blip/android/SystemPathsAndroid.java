package net.blip.android;

import android.os.Environment;
import net.blip.libblip.SystemPaths;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SystemPathsAndroid implements SystemPaths {
    public static final SystemPathsAndroid a = new Object();
    public static final String b = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath();
    public static final String c = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS).getAbsolutePath();
}
