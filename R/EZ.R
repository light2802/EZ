#' Remove unwanted characters from the column names
#'
#'
#' Sometimes we may get a dataframe wich have column names have characters like !&()/.," "
#' These are unwanted obviously coz they make it impossible to reference the column using $ operator or while pipelining
#' So this function removes those characters from the column names.
#' 
#'
#' @param data A data frame
#' @param idf List of unwanted characters/ Identifier
#' @param sep Character to substitute/ Separator
#' @param use.def Boolean whether to use the default identifier list
#' @return Dataframe with removed characters from the column names
#' @seealso [base::gsub()] which this function wraps.
#' @export


clean_names <- function(data,idf=c(),sep='_',use.def=TRUE){
    def=c(" ", "/" , "\\(" , "\\)" , "\\-" , "&")
    if (use.def){
        append(idf,def)
    }
    for (i in idf){
        names(df) <- gsub(i,sep,names(df))
    }
    return(df)
}

#' Split dataset into train and test
#'
#'
#' Splitting dataset into training and testing is a job done before every moedel training
#' So this function does exactly that
#' 
#'
#' @param data Dataframes,Arrays,Vectors
#' @param train_size Numeric (should be between 0.0 and 1.0). Represent the proportion of the dataset to include in the test split.
#' @param seed Controls the shuffling applied to the data before applying the split. Pass an int for reproducible output across multiple function calls.
#' @param shuffle Whether or not to shuffle the data before splitting.
#' @return List containing train-test split of inputs.
#' @seealso [base::gsub()] which this function wraps.
#' @export


train_test_split <- function(data, train_size=0.8, seed=1, shuffle=FALSE){
    set.seed(seed)
    indices <- round(nrow(data)*train_size,digits=0)
    if(shuffle){
        train.indices <- sample(1:nrow(data),indices)
    } else {
        train.indices <- 1:indices
    }
    test <- data[train.indices,]
    train <- data[-train.indices,]
    return(c("train"=train,"test"=test))
}

