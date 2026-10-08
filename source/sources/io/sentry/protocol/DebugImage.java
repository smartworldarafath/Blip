package io.sentry.protocol;

import androidx.datastore.preferences.PreferencesProto$Value;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DebugImage implements JsonSerializable {
    public static final String JVM = "jvm";
    public static final String PROGUARD = "proguard";
    private String arch;
    private String codeFile;
    private String codeId;
    private String debugFile;
    private String debugId;
    private String imageAddr;
    private Long imageSize;
    private String type;
    private Map<String, Object> unknown;
    private String uuid;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<DebugImage> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            DebugImage debugImage = new DebugImage();
            objectReader.H0();
            HashMap hashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -1840639000:
                        if (e0.equals("debug_file")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1443345323:
                        if (e0.equals("image_addr")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1442803611:
                        if (e0.equals("image_size")) {
                            c = 2;
                            break;
                        }
                        break;
                    case -1127437170:
                        if (e0.equals("code_file")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 3002454:
                        if (e0.equals("arch")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 3575610:
                        if (e0.equals("type")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 3601339:
                        if (e0.equals("uuid")) {
                            c = 6;
                            break;
                        }
                        break;
                    case 547804807:
                        if (e0.equals("debug_id")) {
                            c = 7;
                            break;
                        }
                        break;
                    case 941842605:
                        if (e0.equals("code_id")) {
                            c = '\b';
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        debugImage.debugFile = objectReader.L();
                        break;
                    case 1:
                        debugImage.imageAddr = objectReader.L();
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        debugImage.imageSize = objectReader.F();
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        debugImage.codeFile = objectReader.L();
                        break;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        debugImage.arch = objectReader.L();
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        debugImage.type = objectReader.L();
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        debugImage.uuid = objectReader.L();
                        break;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        debugImage.debugId = objectReader.L();
                        break;
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        debugImage.codeId = objectReader.L();
                        break;
                    default:
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        objectReader.D(iLogger, hashMap, e0);
                        break;
                }
            }
            objectReader.i0();
            debugImage.setUnknown(hashMap);
            return debugImage;
        }
    }

    public String getArch() {
        return this.arch;
    }

    public String getCodeFile() {
        return this.codeFile;
    }

    public String getCodeId() {
        return this.codeId;
    }

    public String getDebugFile() {
        return this.debugFile;
    }

    public String getDebugId() {
        return this.debugId;
    }

    public String getImageAddr() {
        return this.imageAddr;
    }

    public Long getImageSize() {
        return this.imageSize;
    }

    public String getType() {
        return this.type;
    }

    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public String getUuid() {
        return this.uuid;
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        if (this.uuid != null) {
            jsonObjectWriter.c("uuid");
            jsonObjectWriter.j(this.uuid);
        }
        if (this.type != null) {
            jsonObjectWriter.c("type");
            jsonObjectWriter.j(this.type);
        }
        if (this.debugId != null) {
            jsonObjectWriter.c("debug_id");
            jsonObjectWriter.j(this.debugId);
        }
        if (this.debugFile != null) {
            jsonObjectWriter.c("debug_file");
            jsonObjectWriter.j(this.debugFile);
        }
        if (this.codeId != null) {
            jsonObjectWriter.c("code_id");
            jsonObjectWriter.j(this.codeId);
        }
        if (this.codeFile != null) {
            jsonObjectWriter.c("code_file");
            jsonObjectWriter.j(this.codeFile);
        }
        if (this.imageAddr != null) {
            jsonObjectWriter.c("image_addr");
            jsonObjectWriter.j(this.imageAddr);
        }
        if (this.imageSize != null) {
            jsonObjectWriter.c("image_size");
            jsonObjectWriter.i(this.imageSize);
        }
        if (this.arch != null) {
            jsonObjectWriter.c("arch");
            jsonObjectWriter.j(this.arch);
        }
        Map<String, Object> map = this.unknown;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.unknown.get(str);
                jsonObjectWriter.c(str);
                jsonObjectWriter.g(iLogger, obj);
            }
        }
        jsonObjectWriter.b();
    }

    public void setArch(String str) {
        this.arch = str;
    }

    public void setCodeFile(String str) {
        this.codeFile = str;
    }

    public void setCodeId(String str) {
        this.codeId = str;
    }

    public void setDebugFile(String str) {
        this.debugFile = str;
    }

    public void setDebugId(String str) {
        this.debugId = str;
    }

    public void setImageAddr(String str) {
        this.imageAddr = str;
    }

    public void setImageSize(long j) {
        this.imageSize = Long.valueOf(j);
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public void setUuid(String str) {
        this.uuid = str;
    }

    public void setImageSize(Long l) {
        this.imageSize = l;
    }
}
