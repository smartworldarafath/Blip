package okio;

import defpackage.k8;
import java.io.FileNotFoundException;
import java.nio.file.FileSystemException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileTime;
import okio.Path;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class NioSystemFileSystem extends JvmSystemFileSystem {
    public static Long Z(FileTime fileTime) {
        long millis = fileTime.toMillis();
        Long valueOf = Long.valueOf(millis);
        if (millis != 0) {
            return valueOf;
        }
        return null;
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public final FileMetadata P(Path path) {
        java.nio.file.Path path2;
        Path path3;
        Long l;
        Long l2;
        path.getClass();
        java.nio.file.Path path4 = Paths.get(path.j.s(), new String[0]);
        path4.getClass();
        Long l3 = null;
        try {
            BasicFileAttributes readAttributes = Files.readAttributes(path4, (Class<BasicFileAttributes>) BasicFileAttributes.class, LinkOption.NOFOLLOW_LINKS);
            if (readAttributes.isSymbolicLink()) {
                path2 = Files.readSymbolicLink(path4);
            } else {
                path2 = null;
            }
            boolean isRegularFile = readAttributes.isRegularFile();
            boolean isDirectory = readAttributes.isDirectory();
            if (path2 != null) {
                String str = Path.k;
                path3 = Path.Companion.a(path2.toString());
            } else {
                path3 = null;
            }
            Long valueOf = Long.valueOf(readAttributes.size());
            FileTime creationTime = readAttributes.creationTime();
            if (creationTime != null) {
                l = Z(creationTime);
            } else {
                l = null;
            }
            FileTime lastModifiedTime = readAttributes.lastModifiedTime();
            if (lastModifiedTime != null) {
                l2 = Z(lastModifiedTime);
            } else {
                l2 = null;
            }
            FileTime lastAccessTime = readAttributes.lastAccessTime();
            if (lastAccessTime != null) {
                l3 = Z(lastAccessTime);
            }
            return new FileMetadata(isRegularFile, isDirectory, path3, valueOf, l, l2, l3);
        } catch (NoSuchFileException | FileSystemException unused) {
            return null;
        }
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public final void h(Path path, Path path2) {
        path.getClass();
        path2.getClass();
        try {
            java.nio.file.Path path3 = Paths.get(path.j.s(), new String[0]);
            path3.getClass();
            java.nio.file.Path path4 = Paths.get(path2.j.s(), new String[0]);
            path4.getClass();
            Files.move(path3, path4, StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING);
        } catch (UnsupportedOperationException unused) {
            k8.j("atomic move not supported");
        } catch (NoSuchFileException e) {
            throw new FileNotFoundException(e.getMessage());
        }
    }

    @Override // okio.JvmSystemFileSystem
    public final String toString() {
        return "NioSystemFileSystem";
    }
}
