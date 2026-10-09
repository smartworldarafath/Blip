.class final enum Landroidx/profileinstaller/FileSectionType;
.super Ljava/lang/Enum;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/profileinstaller/FileSectionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum k:Landroidx/profileinstaller/FileSectionType;

.field public static final enum l:Landroidx/profileinstaller/FileSectionType;

.field public static final enum m:Landroidx/profileinstaller/FileSectionType;

.field public static final synthetic n:[Landroidx/profileinstaller/FileSectionType;


# instance fields
.field public final j:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Landroidx/profileinstaller/FileSectionType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    const-string v4, "DEX_FILES"

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/profileinstaller/FileSectionType;-><init>(IJLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Landroidx/profileinstaller/FileSectionType;->k:Landroidx/profileinstaller/FileSectionType;

    .line 12
    .line 13
    new-instance v1, Landroidx/profileinstaller/FileSectionType;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-wide/16 v3, 0x1

    .line 17
    .line 18
    const-string v5, "EXTRA_DESCRIPTORS"

    .line 19
    .line 20
    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/profileinstaller/FileSectionType;-><init>(IJLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Landroidx/profileinstaller/FileSectionType;

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    const-wide/16 v4, 0x2

    .line 27
    .line 28
    const-string v6, "CLASSES"

    .line 29
    .line 30
    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/profileinstaller/FileSectionType;-><init>(IJLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v2, Landroidx/profileinstaller/FileSectionType;->l:Landroidx/profileinstaller/FileSectionType;

    .line 34
    .line 35
    new-instance v3, Landroidx/profileinstaller/FileSectionType;

    .line 36
    .line 37
    const/4 v4, 0x3

    .line 38
    const-wide/16 v5, 0x3

    .line 39
    .line 40
    const-string v7, "METHODS"

    .line 41
    .line 42
    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/profileinstaller/FileSectionType;-><init>(IJLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sput-object v3, Landroidx/profileinstaller/FileSectionType;->m:Landroidx/profileinstaller/FileSectionType;

    .line 46
    .line 47
    new-instance v4, Landroidx/profileinstaller/FileSectionType;

    .line 48
    .line 49
    const/4 v5, 0x4

    .line 50
    const-wide/16 v6, 0x4

    .line 51
    .line 52
    const-string v8, "AGGREGATION_COUNT"

    .line 53
    .line 54
    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/profileinstaller/FileSectionType;-><init>(IJLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    filled-new-array {v0, v1, v2, v3, v4}, [Landroidx/profileinstaller/FileSectionType;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Landroidx/profileinstaller/FileSectionType;->n:[Landroidx/profileinstaller/FileSectionType;

    .line 62
    .line 63
    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p4, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Landroidx/profileinstaller/FileSectionType;->j:J

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/profileinstaller/FileSectionType;
    .locals 1

    .line 1
    const-class v0, Landroidx/profileinstaller/FileSectionType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/profileinstaller/FileSectionType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/profileinstaller/FileSectionType;
    .locals 1

    .line 1
    sget-object v0, Landroidx/profileinstaller/FileSectionType;->n:[Landroidx/profileinstaller/FileSectionType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Landroidx/profileinstaller/FileSectionType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/profileinstaller/FileSectionType;

    .line 8
    .line 9
    return-object v0
.end method
