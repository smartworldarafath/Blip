.class public abstract Landroidx/compose/ui/text/font/FontVariation;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/font/FontVariation$Setting;,
        Landroidx/compose/ui/text/font/FontVariation$SettingInt;,
        Landroidx/compose/ui/text/font/FontVariation$Settings;
    }
.end annotation


# direct methods
.method public static a(I)Landroidx/compose/ui/text/font/FontVariation$Setting;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-gt v0, p0, :cond_0

    .line 3
    .line 4
    const/16 v0, 0x3e9

    .line 5
    .line 6
    if-ge p0, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "\'wght\' value must be in [1, 1000]. Actual: "

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    new-instance v0, Landroidx/compose/ui/text/font/FontVariation$SettingInt;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Landroidx/compose/ui/text/font/FontVariation$SettingInt;-><init>(I)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method
