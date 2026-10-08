package net.blip.android.filetypes;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import defpackage.jb;
import java.io.File;
import java.util.List;
import java.util.Locale;
import kotlin.Pair;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import net.blip.libblip.FileType;
import okio.Path;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FileType_UriKt {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:100:?, code lost:
    
        return net.blip.libblip.FileType.u;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0204, code lost:
    
        if (r8.equals("cr3") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0216, code lost:
    
        if (r8.equals("cpp") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:?, code lost:
    
        return net.blip.libblip.FileType.t;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0220, code lost:
    
        if (r8.equals("markdown") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x022a, code lost:
    
        if (r8.equals("swift") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0234, code lost:
    
        if (r8.equals("pages") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x023e, code lost:
    
        if (r8.equals("bzip2") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0248, code lost:
    
        if (r8.equals("avchd") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0252, code lost:
    
        if (r8.equals("xlsx") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x025c, code lost:
    
        if (r8.equals("webp") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:?, code lost:
    
        return net.blip.libblip.FileType.m;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0266, code lost:
    
        if (r8.equals("webm") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0270, code lost:
    
        if (r8.equals("tiff") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x027a, code lost:
    
        if (r8.equals("tbz2") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0284, code lost:
    
        if (r8.equals("sass") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x028e, code lost:
    
        if (r8.equals("pptx") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:?, code lost:
    
        return net.blip.libblip.FileType.s;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0298, code lost:
    
        if (r8.equals("mpeg") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x02a2, code lost:
    
        if (r8.equals("less") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x02ac, code lost:
    
        if (r8.equals("json") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x02b6, code lost:
    
        if (r8.equals("jpeg") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x02c0, code lost:
    
        if (r8.equals("java") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x02ca, code lost:
    
        if (r8.equals("html") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x02d4, code lost:
    
        if (r8.equals("heif") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x02de, code lost:
    
        if (r8.equals("heic") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x02e8, code lost:
    
        if (r8.equals("gzip") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x02f2, code lost:
    
        if (r8.equals("flac") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x02fc, code lost:
    
        if (r8.equals("docx") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0306, code lost:
    
        if (r8.equals("alac") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0310, code lost:
    
        if (r8.equals("aiff") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x031a, code lost:
    
        if (r8.equals("zip") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0324, code lost:
    
        if (r8.equals("z10") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x032e, code lost:
    
        if (r8.equals("xml") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0338, code lost:
    
        if (r8.equals("wmv") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0342, code lost:
    
        if (r8.equals("wmf") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x034c, code lost:
    
        if (r8.equals("wma") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x0356, code lost:
    
        if (r8.equals("wav") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x036e, code lost:
    
        if (r8.equals("txz") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0378, code lost:
    
        if (r8.equals("txt") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:?, code lost:
    
        return net.blip.libblip.FileType.p;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x0382, code lost:
    
        if (r8.equals("tif") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x038c, code lost:
    
        if (r8.equals("tgz") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x0396, code lost:
    
        if (r8.equals("tga") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x03a0, code lost:
    
        if (r8.equals("tbz") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x03a8, code lost:
    
        if (r8.equals("tar") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x03b2, code lost:
    
        if (r8.equals("svg") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:?, code lost:
    
        return net.blip.libblip.FileType.n;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x03bc, code lost:
    
        if (r8.equals("srw") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x03c6, code lost:
    
        if (r8.equals("srf") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x03d0, code lost:
    
        if (r8.equals("sr2") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x03da, code lost:
    
        if (r8.equals("rtf") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x03e4, code lost:
    
        if (r8.equals("raw") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x03ee, code lost:
    
        if (r8.equals("rar") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x03f8, code lost:
    
        if (r8.equals("psd") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x0402, code lost:
    
        if (r8.equals("r3d") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x040c, code lost:
    
        if (r8.equals("ppt") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x0416, code lost:
    
        if (r8.equals("png") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x0420, code lost:
    
        if (r8.equals("r10") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x042a, code lost:
    
        if (r8.equals("php") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x0434, code lost:
    
        if (r8.equals("pdf") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x043e, code lost:
    
        if (r8.equals("orf") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x0448, code lost:
    
        if (r8.equals("ogg") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x0452, code lost:
    
        if (r8.equals("odp") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x045c, code lost:
    
        if (r8.equals("nrw") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x0466, code lost:
    
        if (r8.equals("nef") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x0470, code lost:
    
        if (r8.equals("mrw") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x047a, code lost:
    
        if (r8.equals("mpv") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x0484, code lost:
    
        if (r8.equals("mov") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x048e, code lost:
    
        if (r8.equals("mkv") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x0498, code lost:
    
        if (r8.equals("mid") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x04a2, code lost:
    
        if (r8.equals("lrv") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x04ac, code lost:
    
        if (r8.equals("log") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x04b6, code lost:
    
        if (r8.equals("kts") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x04c0, code lost:
    
        if (r8.equals("m4v") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x04ca, code lost:
    
        if (r8.equals("key") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x04d4, code lost:
    
        if (r8.equals("jpg") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x04de, code lost:
    
        if (r8.equals("htm") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x04e8, code lost:
    
        if (r8.equals("hpp") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x04f2, code lost:
    
        if (r8.equals("gpr") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x04fc, code lost:
    
        if (r8.equals("gif") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x0506, code lost:
    
        if (r8.equals("fig") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x0510, code lost:
    
        if (r8.equals("fff") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x051a, code lost:
    
        if (r8.equals("erf") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x0524, code lost:
    
        if (r8.equals("eps") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x052e, code lost:
    
        if (r8.equals("doc") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x0538, code lost:
    
        if (r8.equals("dng") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x0542, code lost:
    
        if (r8.equals("cxx") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x054c, code lost:
    
        if (r8.equals("css") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x0556, code lost:
    
        if (r8.equals("crw") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x0560, code lost:
    
        if (r8.equals("cmd") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x056a, code lost:
    
        if (r8.equals("clj") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x0574, code lost:
    
        if (r8.equals("cfg") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x0582, code lost:
    
        if (r8.equals("bmp") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x0590, code lost:
    
        if (r8.equals("bat") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x059a, code lost:
    
        if (r8.equals("avi") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x05a4, code lost:
    
        if (r8.equals("arw") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x05ae, code lost:
    
        if (r8.equals("c++") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x05b8, code lost:
    
        if (r8.equals("aac") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:306:0x05c6, code lost:
    
        if (r8.equals("3gp") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x05d4, code lost:
    
        if (r8.equals("3fr") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x05e2, code lost:
    
        if (r8.equals("xz") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x05ec, code lost:
    
        if (r8.equals("ts") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x05f6, code lost:
    
        if (r8.equals("sh") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x0600, code lost:
    
        if (r8.equals("rs") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x060a, code lost:
    
        if (r8.equals("rb") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x0614, code lost:
    
        if (r8.equals("py") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x061e, code lost:
    
        if (r8.equals("mm") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x0628, code lost:
    
        if (r8.equals("md") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x0636, code lost:
    
        if (r8.equals("kt") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x0640, code lost:
    
        if (r8.equals("js") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x064a, code lost:
    
        if (r8.equals("hs") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x0652, code lost:
    
        if (r8.equals("gz") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x065c, code lost:
    
        if (r8.equals("go") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x0666, code lost:
    
        if (r8.equals("cs") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x0670, code lost:
    
        if (r8.equals("cc") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:340:0x067a, code lost:
    
        if (r8.equals("ai") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x0688, code lost:
    
        if (r8.equals("7z") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x0692, code lost:
    
        if (r8.equals("m") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x069b, code lost:
    
        if (r8.equals("h") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x06a4, code lost:
    
        if (r8.equals("c") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x06ad, code lost:
    
        if (r8.equals("keynote") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x06b9, code lost:
    
        if (r8.equals("tar.xz") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x06c2, code lost:
    
        if (r8.equals("tar.gz") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x06cb, code lost:
    
        if (r8.equals("svelte") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x06d4, code lost:
    
        if (r8.equals("coffee") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x06e0, code lost:
    
        if (r8.equals("tar.bz2") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x06ec, code lost:
    
        if (r8.equals("numbers") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0120, code lost:
    
        if (r8.equals("z09") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:?, code lost:
    
        return net.blip.libblip.FileType.v;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x012a, code lost:
    
        if (r8.equals("z08") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0134, code lost:
    
        if (r8.equals("z07") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x013e, code lost:
    
        if (r8.equals("z06") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0150, code lost:
    
        if (r8.equals("z05") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x015a, code lost:
    
        if (r8.equals("z04") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0164, code lost:
    
        if (r8.equals("z03") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x016e, code lost:
    
        if (r8.equals("z02") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0178, code lost:
    
        if (r8.equals("z01") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0182, code lost:
    
        if (r8.equals("r09") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x018c, code lost:
    
        if (r8.equals("r08") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0196, code lost:
    
        if (r8.equals("r07") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01a0, code lost:
    
        if (r8.equals("r06") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01aa, code lost:
    
        if (r8.equals("r05") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01b4, code lost:
    
        if (r8.equals("r04") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01be, code lost:
    
        if (r8.equals("r03") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01c8, code lost:
    
        if (r8.equals("r02") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01d2, code lost:
    
        if (r8.equals("r01") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01dc, code lost:
    
        if (r8.equals("odt") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:?, code lost:
    
        return net.blip.libblip.FileType.q;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01e6, code lost:
    
        if (r8.equals("ods") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01f0, code lost:
    
        if (r8.equals("mp4") == false) goto L512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:?, code lost:
    
        return net.blip.libblip.FileType.o;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01fa, code lost:
    
        if (r8.equals("mp3") == false) goto L512;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:37:0x0106. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:38:0x0109. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:39:0x010c. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:40:0x010f. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:41:0x0112. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:42:0x0115. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final FileType a(FileType.Companion companion, Context context, Uri uri) {
        String str;
        Character valueOf;
        Object failure;
        companion.getClass();
        context.getClass();
        uri.getClass();
        String scheme = uri.getScheme();
        String str2 = null;
        if (scheme != null && scheme.hashCode() == 951530617 && scheme.equals("content")) {
            try {
                Cursor query = context.getContentResolver().query(uri, null, null, null, null);
                if (query != null) {
                    try {
                        query.moveToFirst();
                        failure = query.getString(query.getColumnIndexOrThrow("_display_name"));
                        query.close();
                    } finally {
                    }
                } else {
                    failure = null;
                }
            } catch (Throwable th) {
                failure = new Result.Failure(th);
            }
            if (failure instanceof Result.Failure) {
                failure = null;
            }
            str = (String) failure;
        } else {
            String path = uri.getPath();
            if (path != null) {
                str = new File(path).getName();
            } else {
                str = null;
            }
        }
        if (str != null) {
            if (str.length() == 0) {
                valueOf = null;
            } else {
                valueOf = Character.valueOf(str.charAt(str.length() - 1));
            }
            if (String.valueOf(valueOf).equals(Path.k)) {
                return FileType.k;
            }
            Locale locale = Locale.ROOT;
            String lowerCase = str.toLowerCase(locale);
            lowerCase.getClass();
            List H = StringsKt.H(lowerCase, new char[]{'.'});
            if (H.size() != 1) {
                String str3 = (String) CollectionsKt.z(H);
                if (H.size() > 2) {
                    str2 = (String) H.get(H.size() - 2);
                }
                Pair pair = new Pair(str2, CollectionsKt.z(H));
                if (pair.equals(new Pair("tar", "gz")) || pair.equals(new Pair("tar", "bz2"))) {
                    str2 = jb.g(str2, ".", str3);
                } else {
                    str2 = str3;
                }
            }
            if (str2 != null) {
                String lowerCase2 = str2.toLowerCase(locale);
                lowerCase2.getClass();
                int hashCode = lowerCase2.hashCode();
                switch (hashCode) {
                    case -2000515510:
                        break;
                    case -1539977967:
                        break;
                    case -1355030580:
                        break;
                    case -890523077:
                        break;
                    case -880960548:
                        break;
                    case -880960021:
                        break;
                    case -814676271:
                        break;
                    case 99:
                        break;
                    case 104:
                        break;
                    case 109:
                        break;
                    case 1827:
                        break;
                    case 3112:
                        break;
                    case 3168:
                        break;
                    case 3184:
                        break;
                    case 3304:
                        break;
                    case 3315:
                        break;
                    case 3339:
                        break;
                    case 3401:
                        break;
                    case 3433:
                        break;
                    case 3479:
                        break;
                    case 3488:
                        break;
                    case 3593:
                        break;
                    case 3632:
                        break;
                    case 3649:
                        break;
                    case 3669:
                        break;
                    case 3711:
                        break;
                    case 3842:
                        break;
                    case 52287:
                        break;
                    case 52316:
                        break;
                    case 96323:
                        break;
                    case 96515:
                        break;
                    case 96870:
                        break;
                    case 96980:
                        break;
                    case 97301:
                        break;
                    case 97669:
                        break;
                    case 98404:
                        break;
                    case 98593:
                        break;
                    case 98618:
                        break;
                    case 98792:
                        break;
                    case 98819:
                        break;
                    case 98979:
                        break;
                    case 99613:
                        break;
                    case 99640:
                        break;
                    case 100648:
                        break;
                    case 100697:
                        break;
                    case 101286:
                        break;
                    case 101380:
                        break;
                    case 102340:
                        break;
                    case 102569:
                        break;
                    case 103528:
                        break;
                    case 103649:
                        break;
                    case 105441:
                        break;
                    case 106079:
                        break;
                    case 106479:
                        break;
                    case 106538:
                        break;
                    case 107332:
                        break;
                    case 107440:
                        break;
                    case 108104:
                        break;
                    case 108184:
                        break;
                    case 108308:
                        break;
                    case 108339:
                        break;
                    case 108402:
                        break;
                    case 108943:
                        break;
                    case 109363:
                        break;
                    case 109883:
                        break;
                    case 109967:
                        break;
                    case 110307:
                        break;
                    case 110834:
                        break;
                    case 110968:
                        break;
                    case 111121:
                        break;
                    case 111145:
                        break;
                    case 111220:
                        break;
                    case 111235:
                        break;
                    case 111297:
                        break;
                    case 112675:
                        break;
                    case 112680:
                        break;
                    case 113252:
                        break;
                    case 114099:
                        break;
                    case 114151:
                        break;
                    case 114168:
                        break;
                    case 114276:
                        break;
                    case 114597:
                        break;
                    case 114636:
                        break;
                    case 114766:
                        break;
                    case 114791:
                        break;
                    case 114833:
                        break;
                    case 115312:
                        break;
                    case 115318:
                        break;
                    case 116079:
                        if (lowerCase2.equals("url")) {
                            return FileType.w;
                        }
                        return FileType.x;
                    case 117484:
                        break;
                    case 117835:
                        break;
                    case 117840:
                        break;
                    case 117856:
                        break;
                    case 118807:
                        break;
                    case 118809:
                        break;
                    case 120609:
                        break;
                    case 2993896:
                        break;
                    case 2996621:
                        break;
                    case 3088960:
                        break;
                    case 3145576:
                        break;
                    case 3189082:
                        break;
                    case 3198679:
                        break;
                    case 3198682:
                        break;
                    case 3213227:
                        break;
                    case 3254818:
                        break;
                    case 3268712:
                        break;
                    case 3271912:
                        break;
                    case 3318169:
                        break;
                    case 3358085:
                        break;
                    case 3447940:
                        break;
                    case 3522862:
                        break;
                    case 3553766:
                        break;
                    case 3559925:
                        break;
                    case 3645337:
                        break;
                    case 3645340:
                        break;
                    case 3682393:
                        break;
                    case 93195338:
                        break;
                    case 94243987:
                        break;
                    case 106426308:
                        break;
                    case 109854227:
                        break;
                    case 246938863:
                        break;
                    default:
                        switch (hashCode) {
                            case 98723:
                                if (!lowerCase2.equals("cr2")) {
                                    break;
                                }
                                return FileType.l;
                            case 98724:
                                break;
                            default:
                                switch (hashCode) {
                                    case 108272:
                                        break;
                                    case 108273:
                                        break;
                                    default:
                                        switch (hashCode) {
                                            case 109886:
                                                break;
                                            case 109887:
                                                break;
                                            default:
                                                switch (hashCode) {
                                                    case 111091:
                                                        break;
                                                    case 111092:
                                                        break;
                                                    case 111093:
                                                        break;
                                                    case 111094:
                                                        break;
                                                    case 111095:
                                                        break;
                                                    case 111096:
                                                        break;
                                                    case 111097:
                                                        break;
                                                    case 111098:
                                                        break;
                                                    case 111099:
                                                        break;
                                                    default:
                                                        switch (hashCode) {
                                                            case 118779:
                                                                break;
                                                            case 118780:
                                                                break;
                                                            case 118781:
                                                                break;
                                                            case 118782:
                                                                break;
                                                            case 118783:
                                                                if (!lowerCase2.equals("xls")) {
                                                                    break;
                                                                }
                                                                return FileType.r;
                                                            case 118784:
                                                                break;
                                                            case 118785:
                                                                break;
                                                            case 118786:
                                                                break;
                                                            case 118787:
                                                                break;
                                                            default:
                                                                return FileType.x;
                                                        }
                                                }
                                        }
                                }
                        }
                }
            } else {
                return FileType.x;
            }
        } else {
            return FileType.x;
        }
    }
}
