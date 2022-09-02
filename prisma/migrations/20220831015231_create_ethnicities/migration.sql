-- CreateTable
CREATE TABLE "ethnicities" (
    "ethnicity_id" SERIAL NOT NULL,
    "description" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "ethnicities_pkey" PRIMARY KEY ("ethnicity_id")
);
