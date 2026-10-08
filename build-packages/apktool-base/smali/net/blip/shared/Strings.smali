.class public final Lnet/blip/shared/Strings;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "https://blip.net"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "/download"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 21
    .line 22
    const-string v0, "https://discord.gg/Ztng4kFFTR"

    .line 23
    .line 24
    sput-object v0, Lnet/blip/shared/Strings;->b:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "blipnet"

    .line 27
    .line 28
    sput-object v0, Lnet/blip/shared/Strings;->c:Ljava/lang/String;

    .line 29
    .line 30
    const-string v1, "https://x.com/"

    .line 31
    .line 32
    invoke-static {v1, v0}, Ljb;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lnet/blip/shared/Strings;->d:Ljava/lang/String;

    .line 37
    .line 38
    const-string v0, "hello@blip.net"

    .line 39
    .line 40
    sput-object v0, Lnet/blip/shared/Strings;->e:Ljava/lang/String;

    .line 41
    .line 42
    const-string v0, "https://blip.net/terms"

    .line 43
    .line 44
    sput-object v0, Lnet/blip/shared/Strings;->f:Ljava/lang/String;

    .line 45
    .line 46
    const-string v0, "https://blip.net/privacy"

    .line 47
    .line 48
    sput-object v0, Lnet/blip/shared/Strings;->g:Ljava/lang/String;

    .line 49
    .line 50
    return-void
.end method
