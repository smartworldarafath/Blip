.class final Landroidx/compose/ui/text/font/FontVariation$SettingInt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/text/font/FontVariation$Setting;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/font/FontVariation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingInt"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/ui/text/font/FontVariation$SettingInt;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/text/font/FontVariation$SettingInt;->a:I

    .line 2
    .line 3
    int-to-float p0, p0

    .line 4
    return p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "wght"

    .line 2
    .line 3
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/font/FontVariation$SettingInt;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/compose/ui/text/font/FontVariation$SettingInt;

    .line 12
    .line 13
    iget p0, p0, Landroidx/compose/ui/text/font/FontVariation$SettingInt;->a:I

    .line 14
    .line 15
    iget p1, p1, Landroidx/compose/ui/text/font/FontVariation$SettingInt;->a:I

    .line 16
    .line 17
    if-eq p0, p1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    const v0, 0x6bd53a4

    .line 2
    .line 3
    .line 4
    iget p0, p0, Landroidx/compose/ui/text/font/FontVariation$SettingInt;->a:I

    .line 5
    .line 6
    add-int/2addr v0, p0

    .line 7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "FontVariation.Setting(axisName=\'wght\', value="

    .line 2
    .line 3
    const-string v1, ")"

    .line 4
    .line 5
    iget p0, p0, Landroidx/compose/ui/text/font/FontVariation$SettingInt;->a:I

    .line 6
    .line 7
    invoke-static {v0, p0, v1}, Ljb;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
