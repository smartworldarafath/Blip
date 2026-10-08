.class public final enum Lnet/blip/shared/LightDarkTheme;
.super Ljava/lang/Enum;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/blip/shared/LightDarkTheme;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum j:Lnet/blip/shared/LightDarkTheme;

.field public static final enum k:Lnet/blip/shared/LightDarkTheme;

.field public static final synthetic l:[Lnet/blip/shared/LightDarkTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lnet/blip/shared/LightDarkTheme;

    .line 2
    .line 3
    const-string v1, "System"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lnet/blip/shared/LightDarkTheme;->j:Lnet/blip/shared/LightDarkTheme;

    .line 10
    .line 11
    new-instance v1, Lnet/blip/shared/LightDarkTheme;

    .line 12
    .line 13
    const-string v2, "Light"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lnet/blip/shared/LightDarkTheme;

    .line 20
    .line 21
    const-string v3, "Dark"

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sput-object v2, Lnet/blip/shared/LightDarkTheme;->k:Lnet/blip/shared/LightDarkTheme;

    .line 28
    .line 29
    filled-new-array {v0, v1, v2}, [Lnet/blip/shared/LightDarkTheme;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lnet/blip/shared/LightDarkTheme;->l:[Lnet/blip/shared/LightDarkTheme;

    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/blip/shared/LightDarkTheme;
    .locals 1

    .line 1
    const-class v0, Lnet/blip/shared/LightDarkTheme;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/blip/shared/LightDarkTheme;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/blip/shared/LightDarkTheme;
    .locals 1

    .line 1
    sget-object v0, Lnet/blip/shared/LightDarkTheme;->l:[Lnet/blip/shared/LightDarkTheme;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/blip/shared/LightDarkTheme;

    .line 8
    .line 9
    return-object v0
.end method
