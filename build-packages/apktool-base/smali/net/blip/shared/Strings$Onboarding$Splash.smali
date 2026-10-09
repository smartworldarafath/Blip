.class public abstract Lnet/blip/shared/Strings$Onboarding$Splash;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lnet/blip/shared/Strings;->f:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lnet/blip/shared/Strings;->g:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, ") and [Privacy Policy]("

    .line 6
    .line 7
    const-string v3, ")"

    .line 8
    .line 9
    const-string v4, "By signing in you agree to the [Terms of Use]("

    .line 10
    .line 11
    invoke-static {v4, v0, v2, v1, v3}, Ljb;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lnet/blip/shared/Strings$Onboarding$Splash;->a:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method
